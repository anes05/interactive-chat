part of 'chat_page_bloc.dart';

@freezed
class ChatPageState with _$ChatPageState {
  const factory ChatPageState.initialMessage() = _InitialMessage;
  //const factory ChatPageState.firstQuestion()=_FirstQuestion;
  const factory ChatPageState.question({
    required QuestionsModel question,
    required List<ChatMessage> messages,
  }) = _Question;
  const factory ChatPageState.finished() = _Finished;

}
