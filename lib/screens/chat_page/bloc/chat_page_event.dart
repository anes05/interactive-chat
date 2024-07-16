part of 'chat_page_bloc.dart';

@freezed
class ChatPageEvent with _$ChatPageEvent {
  const factory ChatPageEvent.intialMessage() =_IntialMessage;
  const factory ChatPageEvent.loadNextQuestion() = _LoadNextQuestion;
  const factory ChatPageEvent.submitResponse({String? response}) = _SubmitResponse;

}
