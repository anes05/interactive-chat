// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialMessage,
    required TResult Function() loadNextQuestion,
    required TResult Function(String? response) submitResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intialMessage,
    TResult? Function()? loadNextQuestion,
    TResult? Function(String? response)? submitResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialMessage,
    TResult Function()? loadNextQuestion,
    TResult Function(String? response)? submitResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntialMessage value) intialMessage,
    required TResult Function(_LoadNextQuestion value) loadNextQuestion,
    required TResult Function(_SubmitResponse value) submitResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IntialMessage value)? intialMessage,
    TResult? Function(_LoadNextQuestion value)? loadNextQuestion,
    TResult? Function(_SubmitResponse value)? submitResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IntialMessage value)? intialMessage,
    TResult Function(_LoadNextQuestion value)? loadNextQuestion,
    TResult Function(_SubmitResponse value)? submitResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPageEventCopyWith<$Res> {
  factory $ChatPageEventCopyWith(
          ChatPageEvent value, $Res Function(ChatPageEvent) then) =
      _$ChatPageEventCopyWithImpl<$Res, ChatPageEvent>;
}

/// @nodoc
class _$ChatPageEventCopyWithImpl<$Res, $Val extends ChatPageEvent>
    implements $ChatPageEventCopyWith<$Res> {
  _$ChatPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IntialMessageImplCopyWith<$Res> {
  factory _$$IntialMessageImplCopyWith(
          _$IntialMessageImpl value, $Res Function(_$IntialMessageImpl) then) =
      __$$IntialMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IntialMessageImplCopyWithImpl<$Res>
    extends _$ChatPageEventCopyWithImpl<$Res, _$IntialMessageImpl>
    implements _$$IntialMessageImplCopyWith<$Res> {
  __$$IntialMessageImplCopyWithImpl(
      _$IntialMessageImpl _value, $Res Function(_$IntialMessageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IntialMessageImpl implements _IntialMessage {
  const _$IntialMessageImpl();

  @override
  String toString() {
    return 'ChatPageEvent.intialMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IntialMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialMessage,
    required TResult Function() loadNextQuestion,
    required TResult Function(String? response) submitResponse,
  }) {
    return intialMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intialMessage,
    TResult? Function()? loadNextQuestion,
    TResult? Function(String? response)? submitResponse,
  }) {
    return intialMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialMessage,
    TResult Function()? loadNextQuestion,
    TResult Function(String? response)? submitResponse,
    required TResult orElse(),
  }) {
    if (intialMessage != null) {
      return intialMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntialMessage value) intialMessage,
    required TResult Function(_LoadNextQuestion value) loadNextQuestion,
    required TResult Function(_SubmitResponse value) submitResponse,
  }) {
    return intialMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IntialMessage value)? intialMessage,
    TResult? Function(_LoadNextQuestion value)? loadNextQuestion,
    TResult? Function(_SubmitResponse value)? submitResponse,
  }) {
    return intialMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IntialMessage value)? intialMessage,
    TResult Function(_LoadNextQuestion value)? loadNextQuestion,
    TResult Function(_SubmitResponse value)? submitResponse,
    required TResult orElse(),
  }) {
    if (intialMessage != null) {
      return intialMessage(this);
    }
    return orElse();
  }
}

abstract class _IntialMessage implements ChatPageEvent {
  const factory _IntialMessage() = _$IntialMessageImpl;
}

/// @nodoc
abstract class _$$LoadNextQuestionImplCopyWith<$Res> {
  factory _$$LoadNextQuestionImplCopyWith(_$LoadNextQuestionImpl value,
          $Res Function(_$LoadNextQuestionImpl) then) =
      __$$LoadNextQuestionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadNextQuestionImplCopyWithImpl<$Res>
    extends _$ChatPageEventCopyWithImpl<$Res, _$LoadNextQuestionImpl>
    implements _$$LoadNextQuestionImplCopyWith<$Res> {
  __$$LoadNextQuestionImplCopyWithImpl(_$LoadNextQuestionImpl _value,
      $Res Function(_$LoadNextQuestionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadNextQuestionImpl implements _LoadNextQuestion {
  const _$LoadNextQuestionImpl();

  @override
  String toString() {
    return 'ChatPageEvent.loadNextQuestion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadNextQuestionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialMessage,
    required TResult Function() loadNextQuestion,
    required TResult Function(String? response) submitResponse,
  }) {
    return loadNextQuestion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intialMessage,
    TResult? Function()? loadNextQuestion,
    TResult? Function(String? response)? submitResponse,
  }) {
    return loadNextQuestion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialMessage,
    TResult Function()? loadNextQuestion,
    TResult Function(String? response)? submitResponse,
    required TResult orElse(),
  }) {
    if (loadNextQuestion != null) {
      return loadNextQuestion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntialMessage value) intialMessage,
    required TResult Function(_LoadNextQuestion value) loadNextQuestion,
    required TResult Function(_SubmitResponse value) submitResponse,
  }) {
    return loadNextQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IntialMessage value)? intialMessage,
    TResult? Function(_LoadNextQuestion value)? loadNextQuestion,
    TResult? Function(_SubmitResponse value)? submitResponse,
  }) {
    return loadNextQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IntialMessage value)? intialMessage,
    TResult Function(_LoadNextQuestion value)? loadNextQuestion,
    TResult Function(_SubmitResponse value)? submitResponse,
    required TResult orElse(),
  }) {
    if (loadNextQuestion != null) {
      return loadNextQuestion(this);
    }
    return orElse();
  }
}

abstract class _LoadNextQuestion implements ChatPageEvent {
  const factory _LoadNextQuestion() = _$LoadNextQuestionImpl;
}

/// @nodoc
abstract class _$$SubmitResponseImplCopyWith<$Res> {
  factory _$$SubmitResponseImplCopyWith(_$SubmitResponseImpl value,
          $Res Function(_$SubmitResponseImpl) then) =
      __$$SubmitResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? response});
}

/// @nodoc
class __$$SubmitResponseImplCopyWithImpl<$Res>
    extends _$ChatPageEventCopyWithImpl<$Res, _$SubmitResponseImpl>
    implements _$$SubmitResponseImplCopyWith<$Res> {
  __$$SubmitResponseImplCopyWithImpl(
      _$SubmitResponseImpl _value, $Res Function(_$SubmitResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$SubmitResponseImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SubmitResponseImpl implements _SubmitResponse {
  const _$SubmitResponseImpl({this.response});

  @override
  final String? response;

  @override
  String toString() {
    return 'ChatPageEvent.submitResponse(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitResponseImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitResponseImplCopyWith<_$SubmitResponseImpl> get copyWith =>
      __$$SubmitResponseImplCopyWithImpl<_$SubmitResponseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialMessage,
    required TResult Function() loadNextQuestion,
    required TResult Function(String? response) submitResponse,
  }) {
    return submitResponse(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intialMessage,
    TResult? Function()? loadNextQuestion,
    TResult? Function(String? response)? submitResponse,
  }) {
    return submitResponse?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialMessage,
    TResult Function()? loadNextQuestion,
    TResult Function(String? response)? submitResponse,
    required TResult orElse(),
  }) {
    if (submitResponse != null) {
      return submitResponse(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntialMessage value) intialMessage,
    required TResult Function(_LoadNextQuestion value) loadNextQuestion,
    required TResult Function(_SubmitResponse value) submitResponse,
  }) {
    return submitResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IntialMessage value)? intialMessage,
    TResult? Function(_LoadNextQuestion value)? loadNextQuestion,
    TResult? Function(_SubmitResponse value)? submitResponse,
  }) {
    return submitResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IntialMessage value)? intialMessage,
    TResult Function(_LoadNextQuestion value)? loadNextQuestion,
    TResult Function(_SubmitResponse value)? submitResponse,
    required TResult orElse(),
  }) {
    if (submitResponse != null) {
      return submitResponse(this);
    }
    return orElse();
  }
}

abstract class _SubmitResponse implements ChatPageEvent {
  const factory _SubmitResponse({final String? response}) =
      _$SubmitResponseImpl;

  String? get response;
  @JsonKey(ignore: true)
  _$$SubmitResponseImplCopyWith<_$SubmitResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialMessage,
    required TResult Function(
            QuestionsModel question, List<ChatMessage> messages)
        question,
    required TResult Function() finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialMessage,
    TResult? Function(QuestionsModel question, List<ChatMessage> messages)?
        question,
    TResult? Function()? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialMessage,
    TResult Function(QuestionsModel question, List<ChatMessage> messages)?
        question,
    TResult Function()? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialMessage value) initialMessage,
    required TResult Function(_Question value) question,
    required TResult Function(_Finished value) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialMessage value)? initialMessage,
    TResult? Function(_Question value)? question,
    TResult? Function(_Finished value)? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialMessage value)? initialMessage,
    TResult Function(_Question value)? question,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatPageStateCopyWith<$Res> {
  factory $ChatPageStateCopyWith(
          ChatPageState value, $Res Function(ChatPageState) then) =
      _$ChatPageStateCopyWithImpl<$Res, ChatPageState>;
}

/// @nodoc
class _$ChatPageStateCopyWithImpl<$Res, $Val extends ChatPageState>
    implements $ChatPageStateCopyWith<$Res> {
  _$ChatPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialMessageImplCopyWith<$Res> {
  factory _$$InitialMessageImplCopyWith(_$InitialMessageImpl value,
          $Res Function(_$InitialMessageImpl) then) =
      __$$InitialMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialMessageImplCopyWithImpl<$Res>
    extends _$ChatPageStateCopyWithImpl<$Res, _$InitialMessageImpl>
    implements _$$InitialMessageImplCopyWith<$Res> {
  __$$InitialMessageImplCopyWithImpl(
      _$InitialMessageImpl _value, $Res Function(_$InitialMessageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialMessageImpl implements _InitialMessage {
  const _$InitialMessageImpl();

  @override
  String toString() {
    return 'ChatPageState.initialMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialMessage,
    required TResult Function(
            QuestionsModel question, List<ChatMessage> messages)
        question,
    required TResult Function() finished,
  }) {
    return initialMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialMessage,
    TResult? Function(QuestionsModel question, List<ChatMessage> messages)?
        question,
    TResult? Function()? finished,
  }) {
    return initialMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialMessage,
    TResult Function(QuestionsModel question, List<ChatMessage> messages)?
        question,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (initialMessage != null) {
      return initialMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialMessage value) initialMessage,
    required TResult Function(_Question value) question,
    required TResult Function(_Finished value) finished,
  }) {
    return initialMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialMessage value)? initialMessage,
    TResult? Function(_Question value)? question,
    TResult? Function(_Finished value)? finished,
  }) {
    return initialMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialMessage value)? initialMessage,
    TResult Function(_Question value)? question,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (initialMessage != null) {
      return initialMessage(this);
    }
    return orElse();
  }
}

abstract class _InitialMessage implements ChatPageState {
  const factory _InitialMessage() = _$InitialMessageImpl;
}

/// @nodoc
abstract class _$$QuestionImplCopyWith<$Res> {
  factory _$$QuestionImplCopyWith(
          _$QuestionImpl value, $Res Function(_$QuestionImpl) then) =
      __$$QuestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestionsModel question, List<ChatMessage> messages});

  $QuestionsModelCopyWith<$Res> get question;
}

/// @nodoc
class __$$QuestionImplCopyWithImpl<$Res>
    extends _$ChatPageStateCopyWithImpl<$Res, _$QuestionImpl>
    implements _$$QuestionImplCopyWith<$Res> {
  __$$QuestionImplCopyWithImpl(
      _$QuestionImpl _value, $Res Function(_$QuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? messages = null,
  }) {
    return _then(_$QuestionImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as QuestionsModel,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionsModelCopyWith<$Res> get question {
    return $QuestionsModelCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$QuestionImpl implements _Question {
  const _$QuestionImpl(
      {required this.question, required final List<ChatMessage> messages})
      : _messages = messages;

  @override
  final QuestionsModel question;
  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatPageState.question(question: $question, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, question, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      __$$QuestionImplCopyWithImpl<_$QuestionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialMessage,
    required TResult Function(
            QuestionsModel question, List<ChatMessage> messages)
        question,
    required TResult Function() finished,
  }) {
    return question(this.question, messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialMessage,
    TResult? Function(QuestionsModel question, List<ChatMessage> messages)?
        question,
    TResult? Function()? finished,
  }) {
    return question?.call(this.question, messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialMessage,
    TResult Function(QuestionsModel question, List<ChatMessage> messages)?
        question,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (question != null) {
      return question(this.question, messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialMessage value) initialMessage,
    required TResult Function(_Question value) question,
    required TResult Function(_Finished value) finished,
  }) {
    return question(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialMessage value)? initialMessage,
    TResult? Function(_Question value)? question,
    TResult? Function(_Finished value)? finished,
  }) {
    return question?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialMessage value)? initialMessage,
    TResult Function(_Question value)? question,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (question != null) {
      return question(this);
    }
    return orElse();
  }
}

abstract class _Question implements ChatPageState {
  const factory _Question(
      {required final QuestionsModel question,
      required final List<ChatMessage> messages}) = _$QuestionImpl;

  QuestionsModel get question;
  List<ChatMessage> get messages;
  @JsonKey(ignore: true)
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishedImplCopyWith<$Res> {
  factory _$$FinishedImplCopyWith(
          _$FinishedImpl value, $Res Function(_$FinishedImpl) then) =
      __$$FinishedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinishedImplCopyWithImpl<$Res>
    extends _$ChatPageStateCopyWithImpl<$Res, _$FinishedImpl>
    implements _$$FinishedImplCopyWith<$Res> {
  __$$FinishedImplCopyWithImpl(
      _$FinishedImpl _value, $Res Function(_$FinishedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FinishedImpl implements _Finished {
  const _$FinishedImpl();

  @override
  String toString() {
    return 'ChatPageState.finished()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FinishedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialMessage,
    required TResult Function(
            QuestionsModel question, List<ChatMessage> messages)
        question,
    required TResult Function() finished,
  }) {
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialMessage,
    TResult? Function(QuestionsModel question, List<ChatMessage> messages)?
        question,
    TResult? Function()? finished,
  }) {
    return finished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialMessage,
    TResult Function(QuestionsModel question, List<ChatMessage> messages)?
        question,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialMessage value) initialMessage,
    required TResult Function(_Question value) question,
    required TResult Function(_Finished value) finished,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialMessage value)? initialMessage,
    TResult? Function(_Question value)? question,
    TResult? Function(_Finished value)? finished,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialMessage value)? initialMessage,
    TResult Function(_Question value)? question,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class _Finished implements ChatPageState {
  const factory _Finished() = _$FinishedImpl;
}
