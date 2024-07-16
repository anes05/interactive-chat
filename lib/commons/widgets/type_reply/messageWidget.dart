import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chatbot/data/models/questionModel/questionModel.dart';
import 'package:chatbot/screens/chat_page/bloc/chat_page_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MessageWidget extends StatelessWidget {
  final QuestionsModel question;

  MessageWidget({required this.question});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top:26.0),
          child: TextField(
            controller: _controller,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Your answer goes in here...',
              contentPadding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(color: Colors.black),
              ),
              suffixIcon: IconButton(
                icon: const Icon(Icons.send),
                onPressed: () {
                  final response = _controller.text;
                  if (response.isNotEmpty) {
                    context.read<ChatPageBloc>().add(
                      ChatPageEvent.submitResponse(response: response),
                    );
                    _controller.clear();
                  }
                },
              ),
            ),
            onSubmitted: (value) {
              context.read<ChatPageBloc>().add(
                ChatPageEvent.submitResponse(response: value),
              );
            },
          ),
        ),

      ],
    );
  }
}
