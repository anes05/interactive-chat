// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_widget_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AudioWidgetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() ended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? ended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? ended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Ended value) ended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Ended value)? ended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Ended value)? ended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioWidgetEventCopyWith<$Res> {
  factory $AudioWidgetEventCopyWith(
          AudioWidgetEvent value, $Res Function(AudioWidgetEvent) then) =
      _$AudioWidgetEventCopyWithImpl<$Res, AudioWidgetEvent>;
}

/// @nodoc
class _$AudioWidgetEventCopyWithImpl<$Res, $Val extends AudioWidgetEvent>
    implements $AudioWidgetEventCopyWith<$Res> {
  _$AudioWidgetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AudioWidgetEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AudioWidgetEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() ended,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? ended,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? ended,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Ended value) ended,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Ended value)? ended,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Ended value)? ended,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AudioWidgetEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$EndedImplCopyWith<$Res> {
  factory _$$EndedImplCopyWith(
          _$EndedImpl value, $Res Function(_$EndedImpl) then) =
      __$$EndedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EndedImplCopyWithImpl<$Res>
    extends _$AudioWidgetEventCopyWithImpl<$Res, _$EndedImpl>
    implements _$$EndedImplCopyWith<$Res> {
  __$$EndedImplCopyWithImpl(
      _$EndedImpl _value, $Res Function(_$EndedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EndedImpl implements _Ended {
  const _$EndedImpl();

  @override
  String toString() {
    return 'AudioWidgetEvent.ended()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EndedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() ended,
  }) {
    return ended();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? ended,
  }) {
    return ended?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? ended,
    required TResult orElse(),
  }) {
    if (ended != null) {
      return ended();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Ended value) ended,
  }) {
    return ended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Ended value)? ended,
  }) {
    return ended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Ended value)? ended,
    required TResult orElse(),
  }) {
    if (ended != null) {
      return ended(this);
    }
    return orElse();
  }
}

abstract class _Ended implements AudioWidgetEvent {
  const factory _Ended() = _$EndedImpl;
}

/// @nodoc
mixin _$AudioWidgetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() start_record,
    required TResult Function() end_record,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start_record,
    TResult? Function()? end_record,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start_record,
    TResult Function()? end_record,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Start_Record value) start_record,
    required TResult Function(_End_Record value) end_record,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Start_Record value)? start_record,
    TResult? Function(_End_Record value)? end_record,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Start_Record value)? start_record,
    TResult Function(_End_Record value)? end_record,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioWidgetStateCopyWith<$Res> {
  factory $AudioWidgetStateCopyWith(
          AudioWidgetState value, $Res Function(AudioWidgetState) then) =
      _$AudioWidgetStateCopyWithImpl<$Res, AudioWidgetState>;
}

/// @nodoc
class _$AudioWidgetStateCopyWithImpl<$Res, $Val extends AudioWidgetState>
    implements $AudioWidgetStateCopyWith<$Res> {
  _$AudioWidgetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AudioWidgetStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AudioWidgetState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() start_record,
    required TResult Function() end_record,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start_record,
    TResult? Function()? end_record,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start_record,
    TResult Function()? end_record,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Start_Record value) start_record,
    required TResult Function(_End_Record value) end_record,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Start_Record value)? start_record,
    TResult? Function(_End_Record value)? end_record,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Start_Record value)? start_record,
    TResult Function(_End_Record value)? end_record,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AudioWidgetState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$Start_RecordImplCopyWith<$Res> {
  factory _$$Start_RecordImplCopyWith(
          _$Start_RecordImpl value, $Res Function(_$Start_RecordImpl) then) =
      __$$Start_RecordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$Start_RecordImplCopyWithImpl<$Res>
    extends _$AudioWidgetStateCopyWithImpl<$Res, _$Start_RecordImpl>
    implements _$$Start_RecordImplCopyWith<$Res> {
  __$$Start_RecordImplCopyWithImpl(
      _$Start_RecordImpl _value, $Res Function(_$Start_RecordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Start_RecordImpl implements _Start_Record {
  const _$Start_RecordImpl();

  @override
  String toString() {
    return 'AudioWidgetState.start_record()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Start_RecordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() start_record,
    required TResult Function() end_record,
  }) {
    return start_record();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start_record,
    TResult? Function()? end_record,
  }) {
    return start_record?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start_record,
    TResult Function()? end_record,
    required TResult orElse(),
  }) {
    if (start_record != null) {
      return start_record();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Start_Record value) start_record,
    required TResult Function(_End_Record value) end_record,
  }) {
    return start_record(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Start_Record value)? start_record,
    TResult? Function(_End_Record value)? end_record,
  }) {
    return start_record?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Start_Record value)? start_record,
    TResult Function(_End_Record value)? end_record,
    required TResult orElse(),
  }) {
    if (start_record != null) {
      return start_record(this);
    }
    return orElse();
  }
}

abstract class _Start_Record implements AudioWidgetState {
  const factory _Start_Record() = _$Start_RecordImpl;
}

/// @nodoc
abstract class _$$End_RecordImplCopyWith<$Res> {
  factory _$$End_RecordImplCopyWith(
          _$End_RecordImpl value, $Res Function(_$End_RecordImpl) then) =
      __$$End_RecordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$End_RecordImplCopyWithImpl<$Res>
    extends _$AudioWidgetStateCopyWithImpl<$Res, _$End_RecordImpl>
    implements _$$End_RecordImplCopyWith<$Res> {
  __$$End_RecordImplCopyWithImpl(
      _$End_RecordImpl _value, $Res Function(_$End_RecordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$End_RecordImpl implements _End_Record {
  const _$End_RecordImpl();

  @override
  String toString() {
    return 'AudioWidgetState.end_record()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$End_RecordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() start_record,
    required TResult Function() end_record,
  }) {
    return end_record();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? start_record,
    TResult? Function()? end_record,
  }) {
    return end_record?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? start_record,
    TResult Function()? end_record,
    required TResult orElse(),
  }) {
    if (end_record != null) {
      return end_record();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Start_Record value) start_record,
    required TResult Function(_End_Record value) end_record,
  }) {
    return end_record(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Start_Record value)? start_record,
    TResult? Function(_End_Record value)? end_record,
  }) {
    return end_record?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Start_Record value)? start_record,
    TResult Function(_End_Record value)? end_record,
    required TResult orElse(),
  }) {
    if (end_record != null) {
      return end_record(this);
    }
    return orElse();
  }
}

abstract class _End_Record implements AudioWidgetState {
  const factory _End_Record() = _$End_RecordImpl;
}
