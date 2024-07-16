import 'package:freezed_annotation/freezed_annotation.dart';
part 'questionModel.freezed.dart';
part 'questionModel.g.dart';
@freezed
class QuestionsModel with _$QuestionsModel{
  const factory QuestionsModel({
      required int questionId,
      required String question,
      String? response,
      String? iconUrl,
      List<String>? options,
      required String type,
      required String defaultValue,
})=_QuestionModel;

  factory QuestionsModel.fromJson(Map<String,dynamic>json)=> _$QuestionsModelFromJson(json);
}

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String? message,
    required bool isUserMessage,
  }) = _ChatMessage;
}