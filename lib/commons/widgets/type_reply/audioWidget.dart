import 'package:chatbot/commons/colors/AppColors.dart';
import 'package:chatbot/commons/widgets/widget_bloc/audioWidgetBloc/audio_widget_bloc.dart';
import 'package:chatbot/data/models/questionModel/questionModel.dart';
import 'package:chatbot/screens/chat_page/bloc/chat_page_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:record/record.dart';

class AudioWidget extends StatelessWidget {
  final QuestionsModel question;

  AudioWidget({required this.question});

  @override
  Widget build(BuildContext context) {
    final Record _recorder = Record();

    return BlocProvider(
      create: (context) => AudioWidgetBloc(),
      child: BlocBuilder<AudioWidgetBloc, AudioWidgetState>(
        builder: (context, state) {
          bool isRecording = state.maybeWhen(
            start_record: () => true,
            orElse: () => false,
          );

          return Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, top: 6.0),
                  child: Column(
                    children: [
                      ElevatedButton.icon(
                        icon: const Icon(
                          Icons.mic,
                          color: AppColors.primaryBackground,
                        ),
                        label: Text(
                            isRecording ? 'Stop Recording' : 'Record Audio',
                            style: TextStyle(
                                color: isRecording
                                    ? AppColors.primaryBackground
                                    : AppColors.primaryBackground)),
                        onPressed: () async {
                          final bloc = context.read<AudioWidgetBloc>();

                          if (isRecording) {
                            final path = await _recorder.stop();
                            if (path != null) {
                              String response =
                                  "Audio saved successfully at $path";
                              context.read<ChatPageBloc>().add(
                                  ChatPageEvent.submitResponse(
                                      response: response));
                            }
                          } else {
                            bool result = await _recorder.hasPermission();
                            if (result) {
                              bloc.add(AudioWidgetEvent.started());
                            }
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            if (isRecording) {
                              return AppColors
                                  .blue;
                            } else {
                              return Colors
                                  .blue;
                            }
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
