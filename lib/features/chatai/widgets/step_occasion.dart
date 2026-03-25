import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/chatai_cubit.dart';
import '../bloc/chatai_state.dart';

class StepOccasion extends StatefulWidget {
  const StepOccasion({Key? key}) : super(key: key);

  @override
  State<StepOccasion> createState() => _StepOccasionState();
}

class _StepOccasionState extends State<StepOccasion> {
  final TextEditingController _occasionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final occasion = context.read<ChatAiCubit>().state.occasion;
    if (occasion != null) {
      _occasionController.text = occasion;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.favorite_border, size: 48, color: Colors.purple),
        const SizedBox(height: 16),
        const Text(
          'Nhân dịp gì nhỉ?',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple),
        ),
        const SizedBox(height: 8),
        const Text(
          'Hãy bắt đầu bằng việc chọn sự kiện bạn muốn tặng quà.',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 32),
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Chọn hoặc nhập một dịp tặng quà', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TextField(
                controller: _occasionController,
                decoration: InputDecoration(
                  hintText: 'VD: Sinh nhật, Valentine...',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.purple),
                  ),
                ),
                onChanged: (val) => context.read<ChatAiCubit>().updateOccasion(val),
              ),
              const SizedBox(height: 24),
              const Center(
                child: Icon(Icons.auto_awesome, color: Colors.purple, size: 32),
              ),
              const SizedBox(height: 8),
              const Text(
                'AI Stylist của chúng tôi sẽ sử dụng thông tin này để tạo ra hộp quà hoàn hảo dành riêng cho bạn.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ),
        const Spacer(),
        BlocBuilder<ChatAiCubit, ChatAiState>(
          builder: (context, state) {
            final isValid = (state.occasion?.trim().isNotEmpty ?? false);
            return SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: isValid
                    ? () {
                        context.read<ChatAiCubit>().nextStep();
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isValid ? Colors.grey[300] : Colors.grey[200],
                  foregroundColor: Colors.black,
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Tiếp tục'),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward, size: 16),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
