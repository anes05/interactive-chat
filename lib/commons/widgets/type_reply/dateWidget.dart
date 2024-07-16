import 'package:chatbot/commons/colors/AppColors.dart';
import 'package:chatbot/data/models/questionModel/questionModel.dart';
import 'package:chatbot/screens/chat_page/bloc/chat_page_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class DateWidget extends StatelessWidget {
  final QuestionsModel question;
  DateWidget({required this.question});

  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = DateTime.now();
    TextEditingController _controller = TextEditingController(
      text: DateFormat('yyyy/MM/dd').format(selectedDate),
    );

    return Padding(
      padding: const EdgeInsets.only(top: 26.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () async {
              DateTime? picked = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(1900),
                lastDate: DateTime(2100),

              );
              if (picked != null && picked != selectedDate) {
                selectedDate = picked;
                String formattedDate = "${selectedDate.year.toString()} -${selectedDate.month.toString()} -${selectedDate.day.toString()}";
                _controller.text = DateFormat('yyyy/MM/dd').format(selectedDate);
                context.read<ChatPageBloc>().add(
                    ChatPageEvent.submitResponse(response: formattedDate));
              }
            },
            child: AbsorbPointer(
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Select a date',
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: const Icon(
                      Icons.calendar_today,
                      color: AppColors.blue,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}