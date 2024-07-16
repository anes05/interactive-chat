part of 'audio_widget_bloc.dart';

@freezed
class AudioWidgetState with _$AudioWidgetState {

  const factory AudioWidgetState.initial() = _Initial;
  const factory AudioWidgetState.start_record() = _Start_Record;
  const factory AudioWidgetState.end_record() = _End_Record;
}
