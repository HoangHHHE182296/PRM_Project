import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:public_openapi/public_openapi.dart';
import 'chatai_state.dart';

class ChatAiCubit extends Cubit<ChatAiState> {
  final ConsultationApi _consultationApi;

  ChatAiCubit(this._consultationApi) : super(ChatAiState());

  void updateOccasion(String occasion) {
    emit(state.copyWith(occasion: occasion));
  }

  void updateRecipient(String gender, int age) {
    emit(state.copyWith(recipientGender: gender, recipientAge: age));
  }

  void updateBudget(double minBudget, double maxBudget, String interests) {
    emit(state.copyWith(
      minimumBudget: minBudget,
      maximumBudget: maxBudget,
      interests: interests,
    ));
  }

  void nextStep() {
    if (state.currentStep < 4) {
      emit(state.copyWith(currentStep: state.currentStep + 1));
    }
  }

  void previousStep() {
    if (state.currentStep > 1) {
      emit(state.copyWith(currentStep: state.currentStep - 1));
    }
  }

  Future<void> startConsultation() async {
    emit(state.copyWith(isLoading: true, clearError: true));
    try {
      final occasion = state.occasion ?? '';
      final recipientGender = state.recipientGender ?? '';
      final recipientAge = state.recipientAge ?? 0;
      final minimumBudget = state.minimumBudget ?? 0;
      final maximumBudget = state.maximumBudget ?? 0;
      final interests = state.interests ?? '';

      final commandBuilder = StartConsultationCommandBuilder()
        ..occasion = occasion
        ..recipientGender = recipientGender
        ..recipientAge = recipientAge
        ..minimumBudget = minimumBudget
        ..maximumBudget = maximumBudget
        ..interests = interests;

      final response = await _consultationApi.apiConsultationStartPost(
        startConsultationCommand: commandBuilder.build(),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;
        if (data != null && data.data != null) {
          final sessionId = data.data;
          emit(state.copyWith(
            sessionId: sessionId,
            isLoading: false,
            currentStep: 4,
            messages: [
              ChatMessage(
                  isUser: false,
                  text: 'Xin chào! Tôi đã ghi nhận phong cách bạn tìm kiếm. Bạn muốn tối ưu thêm nội dung gì không?')
            ],
          ));
        } else {
          emit(state.copyWith(error: 'Failed to retrieve session ID.', isLoading: false));
        }
      } else {
         emit(state.copyWith(error: 'API returned status code: ${response.statusCode}', isLoading: false));
      }
    } catch (e) {
      emit(state.copyWith(error: 'Error starting consultation: $e', isLoading: false));
    }
  }

  Future<void> sendMessage(String text) async {
    if (text.trim().isEmpty) return;
    
    final sessionId = state.sessionId;
    if (sessionId == null) return;

    final userMessage = ChatMessage(isUser: true, text: text);
    final updatedMessages = List<ChatMessage>.from(state.messages)..add(userMessage);
    
    emit(state.copyWith(messages: updatedMessages, isLoading: true, clearError: true));

    try {
      final commandBuilder = SendConsultationMessageCommandBuilder()
        ..sessionId = sessionId
        ..message = text;

      final response = await _consultationApi.apiConsultationChatPost(
        sendConsultationMessageCommand: commandBuilder.build(),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final apiResponse = response.data;
        if (apiResponse != null && apiResponse.data != null) {
          final recommendationData = apiResponse.data!;
          final aiResponse = ChatMessage(
            isUser: false, 
            text: recommendationData.message ?? '',
            recommendedGiftSets: recommendationData.recommendedGiftSets,
          );
          final newMessages = List<ChatMessage>.from(state.messages)..add(aiResponse);
          emit(state.copyWith(messages: newMessages, isLoading: false));
        } else {
           emit(state.copyWith(isLoading: false));
        }
      } else {
        final errorMessage = ChatMessage(isUser: false, text: 'Có lỗi xảy ra, vui lòng thử lại.');
        final newMessages = List<ChatMessage>.from(state.messages)..add(errorMessage);
        emit(state.copyWith(messages: newMessages, isLoading: false, error: 'API Error: ${response.statusCode}'));
      }
    } catch (e) {
      final errorMessage = ChatMessage(isUser: false, text: 'Lỗi kết nối. Vui lòng kiểm tra lại mạng.');
      final newMessages = List<ChatMessage>.from(state.messages)..add(errorMessage);
      emit(state.copyWith(messages: newMessages, isLoading: false, error: 'Error sending message: $e'));
    }
  }
}
