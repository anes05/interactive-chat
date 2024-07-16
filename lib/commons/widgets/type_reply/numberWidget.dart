import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chatbot/data/models/questionModel/questionModel.dart';
import 'package:chatbot/screens/chat_page/bloc/chat_page_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NumberWidget extends StatelessWidget {
  final QuestionsModel question;

  NumberWidget({required this.question});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController(text: question.defaultValue);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top:26.0),
          child: TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Enter a number',
              contentPadding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(color: Colors.black),
              ),
              suffixIcon: const Icon(Icons.numbers),
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
