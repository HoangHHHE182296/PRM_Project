import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:public_openapi/public_openapi.dart';
import '../bloc/chatai_cubit.dart';
import '../bloc/chatai_state.dart';
import 'gift_set_detail_bottom_sheet.dart';

class StepChat extends StatefulWidget {
  const StepChat({Key? key}) : super(key: key);

  @override
  State<StepChat> createState() => _StepChatState();
}

class _StepChatState extends State<StepChat> {
  final TextEditingController _msgController = TextEditingController();

  void _sendMessage() {
    final text = _msgController.text;
    if (text.trim().isNotEmpty) {
      context.read<ChatAiCubit>().sendMessage(text);
      _msgController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Icon(Icons.auto_awesome, color: Colors.purple),
            SizedBox(width: 8),
            Text('Chuyên gia AI Stylist', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Spacer(),
            Text('● Đang trực tuyến', style: TextStyle(color: Colors.green, fontSize: 12)),
          ],
        ),
        const Divider(height: 32),
        Expanded(
          child: BlocBuilder<ChatAiCubit, ChatAiState>(
            builder: (context, state) {
              if (state.messages.isEmpty) {
                return const Center(child: Text('Đang kết nối...'));
              }
              return ListView.builder(
                itemCount: state.messages.length,
                itemBuilder: (context, index) {
                  final msg = state.messages[index];
                  return _buildMessageBubble(msg);
                },
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        BlocBuilder<ChatAiCubit, ChatAiState>(
          builder: (context, state) {
            return Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _msgController,
                    decoration: InputDecoration(
                      hintText: 'Nhập tin nhắn cho AI Stylist...',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  onPressed: state.isLoading ? null : _sendMessage,
                  icon: state.isLoading
                      ? const SizedBox(width: 24, height: 24, child: CircularProgressIndicator(strokeWidth: 2))
                      : const Icon(Icons.send, color: Colors.blue),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildMessageBubble(ChatMessage msg) {
    final text = msg.text;
    final isUser = msg.isUser;
    final recommendedGiftSets = msg.recommendedGiftSets;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!isUser) ...[
                const CircleAvatar(
                  backgroundColor: Colors.purple,
                  radius: 16,
                  child: Icon(Icons.auto_awesome, color: Colors.white, size: 16),
                ),
                const SizedBox(width: 8),
              ],
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: isUser ? Colors.blue : Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: isUser ? null : Border.all(color: Colors.grey[300]!),
                  ),
                  child: Text(
                    text,
                    style: TextStyle(color: isUser ? Colors.white : Colors.black87),
                  ),
                ),
              ),
              if (isUser) ...[
                const SizedBox(width: 8),
                const CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 16,
                  child: Icon(Icons.person, color: Colors.white, size: 16),
                ),
              ],
            ],
          ),
          if (recommendedGiftSets != null && recommendedGiftSets.isNotEmpty) ...[
            const SizedBox(height: 12),
            SizedBox(
              height: 380, // Height for the horizontal list
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 40),
                scrollDirection: Axis.horizontal,
                itemCount: recommendedGiftSets.length,
                itemBuilder: (context, index) {
                   return _buildGiftCard(context, recommendedGiftSets[index]);
                },
              ),
            ),
          ]
        ],
      ),
    );
  }

  Widget _buildGiftCard(BuildContext context, RecommendedGiftSet setInfo) {
    final formatter = NumberFormat.currency(locale: 'vi_VN', symbol: 'đ');
    final priceStr = setInfo.totalEstimatedPrice != null ? formatter.format(setInfo.totalEstimatedPrice) : '0 đ';
    final itemCount = setInfo.items?.length ?? 0;

    return Container(
      width: 250,
      margin: const EdgeInsets.only(right: 16, bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purple[50], // Light purple placeholder top
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              ),
              alignment: Alignment.center,
              child: const Icon(Icons.card_giftcard, size: 48, color: Colors.purple),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    setInfo.giftSetName ?? '',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Expanded(
                    child: Text(
                      setInfo.description ?? '',
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(priceStr, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple, fontSize: 14)),
                      Row(
                        children: [
                          const Icon(Icons.inventory_2_outlined, size: 14, color: Colors.grey),
                          const SizedBox(width: 4),
                          Text('$itemCount sản phẩm', style: const TextStyle(color: Colors.grey, fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              builder: (_) => FractionallySizedBox(
                                heightFactor: 0.85,
                                child: GiftSetDetailBottomSheet(giftSet: setInfo),
                              )
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            foregroundColor: Colors.deepPurple,
                            side: const BorderSide(color: Colors.deepPurple),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.remove_red_eye, size: 16),
                              Text('Xem chi tiết', style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          onPressed: () {
                            // TODO: Thêm vào giỏ hàng
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Đã thêm vào giỏ hàng')));
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Colors.deepPurple,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.shopping_cart_outlined, size: 16),
                              SizedBox(width: 4),
                              Text('Vào Giỏ hàng', style: TextStyle(fontSize: 11)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
