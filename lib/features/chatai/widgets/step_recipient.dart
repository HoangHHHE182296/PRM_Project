import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/chatai_cubit.dart';
import '../bloc/chatai_state.dart';

class StepRecipient extends StatefulWidget {
  const StepRecipient({Key? key}) : super(key: key);

  @override
  State<StepRecipient> createState() => _StepRecipientState();
}

class _StepRecipientState extends State<StepRecipient> {
  String? _selectedGender;
  final TextEditingController _ageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final state = context.read<ChatAiCubit>().state;
    _selectedGender = state.recipientGender;
    if (state.recipientAge != null && state.recipientAge! > 0) {
      _ageController.text = state.recipientAge.toString();
    }
  }

  void _update() {
    final age = int.tryParse(_ageController.text) ?? 0;
    context.read<ChatAiCubit>().updateRecipient(_selectedGender ?? '', age);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.people_outline, size: 48, color: Colors.blue),
        const SizedBox(height: 16),
        const Text(
          'Người nhận là ai?',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        const SizedBox(height: 8),
        const Text(
          'Provide information for AI to suggest appropriately.',
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
              const Text('Recipient gender *', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              Row(
                children: [
                  _buildGenderOption('Nam'),
                  const SizedBox(width: 8),
                  _buildGenderOption('Nữ'),
                  const SizedBox(width: 8),
                  _buildGenderOption('Khác'),
                ],
              ),
              const SizedBox(height: 24),
              const Text('Recipient age *', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              TextField(
                controller: _ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Nhập tuổi',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
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
                final isValid = (state.recipientGender?.isNotEmpty ?? false) &&
                                (state.recipientAge != null && state.recipientAge! > 0);
                return ElevatedButton(
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
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Tiếp tục'),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, size: 16),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildGenderOption(String gender) {
    final isSelected = _selectedGender == gender;
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _selectedGender = gender;
            _update();
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            border: Border.all(color: isSelected ? Colors.blue : Colors.grey[300]!),
            borderRadius: BorderRadius.circular(8),
            color: isSelected ? Colors.blue.withOpacity(0.05) : Colors.white,
          ),
          alignment: Alignment.center,
          child: Text(
            gender,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.blue : Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}
