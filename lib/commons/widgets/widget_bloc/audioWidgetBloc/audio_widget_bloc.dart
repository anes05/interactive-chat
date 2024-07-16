import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:record/record.dart';

part 'audio_widget_event.dart';
part 'audio_widget_state.dart';
part 'audio_widget_bloc.freezed.dart';

class AudioWidgetBloc extends Bloc<AudioWidgetEvent, AudioWidgetState> {
  final Record _recorder = Record();
  AudioWidgetBloc() : super(const AudioWidgetState.initial()) {
    on<AudioWidgetEvent>((event, emit) async {
      await event.when(
          started: () async {
            await _recorder.start();
            emit(const AudioWidgetState.start_record());
          },
          ended: () async {
            await _recorder.stop();
            final path= await _recorder.stop() ;
            if(path!= null) {
              emit(const AudioWidgetState.end_record());
            }else{
              emit(const AudioWidgetState.initial());
            }
          }
      );
    });
  }
}
