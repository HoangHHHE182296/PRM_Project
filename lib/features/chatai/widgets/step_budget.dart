import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/chatai_cubit.dart';
import '../bloc/chatai_state.dart';

class StepBudget extends StatefulWidget {
  const StepBudget({Key? key}) : super(key: key);

  @override
  State<StepBudget> createState() => _StepBudgetState();
}

class _StepBudgetState extends State<StepBudget> {
  final TextEditingController _minBudgetController = TextEditingController();
  final TextEditingController _maxBudgetController = TextEditingController();
  final TextEditingController _interestsController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final state = context.read<ChatAiCubit>().state;
    if (state.minimumBudget != null && state.minimumBudget! > 0) {
      _minBudgetController.text = state.minimumBudget.toString();
    }
    if (state.maximumBudget != null && state.maximumBudget! > 0) {
      _maxBudgetController.text = state.maximumBudget.toString();
    }
    if (state.interests != null) {
      _interestsController.text = state.interests!;
    }
  }

  void _update() {
    final minB = double.tryParse(_minBudgetController.text) ?? 0;
    final maxB = double.tryParse(_maxBudgetController.text) ?? 0;
    final interests = _interestsController.text;
    context.read<ChatAiCubit>().updateBudget(minB, maxB, interests);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.account_balance_wallet_outlined, size: 48, color: Colors.green),
        const SizedBox(height: 16),
        const Text(
          'Budget & Interests',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
        ),
        const SizedBox(height: 8),
        const Text(
          'Cân đối ngân sách và mô tả mong muốn của bạn.',
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
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Tối thiểu (VND)', style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        TextField(
                          controller: _minBudgetController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: '200,000',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          onChanged: (_) => _update(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Tối đa (VND)', style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        TextField(
                          controller: _maxBudgetController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: '1,000,000',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          onChanged: (_) => _update(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text('Sở thích / Mô tả thêm', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              TextField(
                controller: _interestsController,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'VD: Thích nước hoa, vintage, màu tím...',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                ),
                onChanged: (_) => _update(),
              ),
            ],
          ),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OutlinedButton.icon(
              onPressed: () {
                context.read<ChatAiCubit>().previousStep();
              },
              icon: const Icon(Icons.arrow_back, color: Colors.redAccent),
              label: const Text('Quay lại', style: TextStyle(color: Colors.redAccent)),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.redAccent),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
            BlocBuilder<ChatAiCubit, ChatAiState>(
              builder: (context, state) {
                final isValid = (state.minimumBudget != null && state.minimumBudget! > 0) &&
                                (state.maximumBudget != null && state.maximumBudget! > 0) &&
                                (state.interests?.trim().isNotEmpty ?? false);

                return ElevatedButton.icon(
                  onPressed: isValid && !state.isLoading
                      ? () {
                          context.read<ChatAiCubit>().startConsultation();
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue,
                    side: const BorderSide(color: Colors.blue),
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  icon: state.isLoading 
                    ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2)) 
                    : const Icon(Icons.auto_awesome),
                  label: const Text('Bắt đầu tư vấn'),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
