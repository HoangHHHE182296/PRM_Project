import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/chatai_cubit.dart';
import 'bloc/chatai_state.dart';
import 'widgets/step_occasion.dart';
import 'widgets/step_recipient.dart';
import 'widgets/step_budget.dart';
import 'widgets/step_chat.dart';

class ChatAiScreen extends StatelessWidget {
  const ChatAiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tư vấn quà tặng', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      backgroundColor: const Color(0xffFAFAFB),
      body: BlocBuilder<ChatAiCubit, ChatAiState>(
        builder: (context, state) {
          return Column(
            children: [
              _buildStepperIndicator(state.currentStep),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: _buildCurrentStep(state.currentStep),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildStepperIndicator(int currentStep) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildStepCircle(1, 'Nhân dịp', currentStep),
          _buildDivider(1, currentStep),
          _buildStepCircle(2, 'Người nhận', currentStep),
          _buildDivider(2, currentStep),
          _buildStepCircle(3, 'Ngân sách', currentStep),
          _buildDivider(3, currentStep),
          _buildStepCircle(4, 'Trò chuyện với AI', currentStep),
        ],
      ),
    );
  }

  Widget _buildStepCircle(int step, String label, int currentStep) {
    final isActive = currentStep >= step;
    return Column(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? Colors.white : Colors.grey[200],
            border: Border.all(
              color: isActive ? Colors.deepPurple : Colors.transparent,
              width: 1.5,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            step.toString(),
            style: TextStyle(
              color: isActive ? Colors.deepPurple : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 10,
            color: isActive ? Colors.deepPurple : Colors.grey,
            fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ],
    );
  }

  Widget _buildDivider(int step, int currentStep) {
    final isActive = currentStep > step;
    return Container(
      width: 30,
      height: 1.5,
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
      color: isActive ? Colors.deepPurple : Colors.grey[300],
    );
  }

  Widget _buildCurrentStep(int step) {
    switch (step) {
      case 1:
        return const StepOccasion();
      case 2:
        return const StepRecipient();
      case 3:
        return const StepBudget();
      case 4:
        return const StepChat();
      default:
        return const SizedBox();
    }
  }
}
