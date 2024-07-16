part of 'audio_widget_bloc.dart';

@freezed
class AudioWidgetEvent with _$AudioWidgetEvent {
  const factory AudioWidgetEvent.started() = _Started;
  const factory AudioWidgetEvent.ended() = _Ended;
}
