

import 'package:public_openapi/public_openapi.dart';
import 'package:built_collection/built_collection.dart';

class ChatMessage {
  final bool isUser;
  final String text;
  final BuiltList<RecommendedGiftSet>? recommendedGiftSets;

  ChatMessage({required this.isUser, required this.text, this.recommendedGiftSets});
}

class ChatAiState {
  final int currentStep;
  final String? occasion;
  final String? recipientGender;
  final int? recipientAge;
  final double? minimumBudget;
  final double? maximumBudget;
  final String? interests;
  final String? sessionId;
  final List<ChatMessage> messages;
  final bool isLoading;
  final String? error;

  ChatAiState({
    this.currentStep = 1,
    this.occasion,
    this.recipientGender,
    this.recipientAge,
    this.minimumBudget,
    this.maximumBudget,
    this.interests,
    this.sessionId,
    this.messages = const [],
    this.isLoading = false,
    this.error,
  });

  ChatAiState copyWith({
    int? currentStep,
    String? occasion,
    String? recipientGender,
    int? recipientAge,
    double? minimumBudget,
    double? maximumBudget,
    String? interests,
    String? sessionId,
    List<ChatMessage>? messages,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) {
    return ChatAiState(
      currentStep: currentStep ?? this.currentStep,
      occasion: occasion ?? this.occasion,
      recipientGender: recipientGender ?? this.recipientGender,
      recipientAge: recipientAge ?? this.recipientAge,
      minimumBudget: minimumBudget ?? this.minimumBudget,
      maximumBudget: maximumBudget ?? this.maximumBudget,
      interests: interests ?? this.interests,
      sessionId: sessionId ?? this.sessionId,
      messages: messages ?? this.messages,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
    );
  }
}
