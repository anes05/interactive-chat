import 'package:chatbot/data/models/questionModel/questionModel.dart';
import 'package:chatbot/screens/chat_page/bloc/chat_page_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ImageWidget extends StatelessWidget {
  final QuestionsModel question;
  ImageWidget({ required this.question});

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
              padding: const EdgeInsets.only(right: 10.0, top: 6.0),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.camera_alt),
                label: const Text('Take Photo'),
                onPressed: () async {
                  final XFile? photo =
                  await _picker.pickImage(source: ImageSource.camera);
                  if (photo != null) {
                    String pathToPhoto = photo.path;
                    String response = "Photo saved successfully at $pathToPhoto";
                    context.read<ChatPageBloc>()
                        .add(ChatPageEvent.submitResponse(response: response));
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
