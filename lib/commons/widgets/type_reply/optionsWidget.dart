import 'package:chatbot/commons/colors/AppColors.dart';
import 'package:chatbot/commons/widgets/toast.dart';
import 'package:chatbot/data/models/questionModel/questionModel.dart';
import 'package:chatbot/screens/chat_page/bloc/chat_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OptionsWidget extends StatefulWidget {
  final QuestionsModel question;

  OptionsWidget({required this.question});

  @override
  _OptionsWidgetState createState() => _OptionsWidgetState();
}

class _OptionsWidgetState extends State<OptionsWidget> {
  final Set<String> _selectedOptions = {};

  List<IconData> optionIcons = [
    Icons.star,
    Icons.favorite,
    Icons.thumb_up,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, top: 10.0),
      child: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 20),
              Column (
                crossAxisAlignment: CrossAxisAlignment.center,
                children: widget.question.options!.asMap().entries.map((entry) {
                  int index = entry.key;
                  String option = entry.value;
                  bool isSelected = _selectedOptions.contains(option);
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (isSelected) {
                            _selectedOptions.remove(option);
                          } else {
                            _selectedOptions.add(option);
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor:
                            isSelected ? Colors.white : AppColors.blue,
                        backgroundColor:
                            isSelected ? AppColors.blue : Colors.grey[200],
                        //padding: const EdgeInsets.all(20.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            optionIcons[index],
                            color: isSelected ? Colors.white : AppColors.blue,
                          ),
                          const Padding(padding: EdgeInsets.all(10.0)),
                          Text(
                            option,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    if (_selectedOptions.isNotEmpty) {
                      context.read<ChatPageBloc>().add(
                            ChatPageEvent.submitResponse(
                              response: _selectedOptions.join(', '),
                            ),
                          );
                    } else {
                      toastInfo(msg: "you need to select at least one option");
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: AppColors.blue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
