import 'package:chatbot/data/models/questionModel/questionModel.dart';
import 'package:chatbot/screens/chat_page/bloc/chat_page_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class VideoButtonWidget extends StatelessWidget {
  final QuestionsModel question;
  VideoButtonWidget({required this.question});

  @override
  Widget build(BuildContext context) {
    final ImagePicker _picker = ImagePicker();

    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0,top: 6.0),
              child: ElevatedButton.icon(
                icon: Icon(Icons.videocam),
                label: Text('Record Video'),
                onPressed: () async {
                  final video = await _picker.pickVideo(source: ImageSource.camera);
                  if (video != null) {
                    String pathToVideo=video.path;
                    String response="Video Saved successfully at $pathToVideo";
                    context.read<ChatPageBloc>()
                        .add(ChatPageEvent.submitResponse(response:response));

                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}