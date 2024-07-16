import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chatbot/commons/widgets/common_widgets.dart';
import 'package:chatbot/commons/widgets/type_reply/audioWidget.dart';
import 'package:chatbot/commons/widgets/type_reply/dateWidget.dart';
import 'package:chatbot/commons/widgets/type_reply/imageWidget.dart';
import 'package:chatbot/commons/widgets/type_reply/numberWidget.dart';
import 'package:chatbot/commons/widgets/type_reply/optionsWidget.dart';
import 'package:chatbot/commons/widgets/type_reply/videoWidget.dart';
import 'package:chatbot/routes/app_router.gr.dart';
import 'package:chatbot/screens/chat_page/bloc/chat_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

@RoutePage()
class ChatPage extends StatelessWidget {
  const ChatPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    return BlocProvider(
      create: (_) => ChatPageBloc()..add(const ChatPageEvent.intialMessage()),
      child: Scaffold(
        appBar: buildAppBar("Interactive chat"),
        body: BlocBuilder<ChatPageBloc, ChatPageState>(
          builder: (context, state) {
            return state.when(
              initialMessage: () {
                context.read<ChatPageBloc>().add(const ChatPageEvent.loadNextQuestion());
                return const Center(child: CircularProgressIndicator());
              },
              question: (question, messages) {
                return ListView.builder(
                  reverse: false, // Show messages from bottom to top
                  itemCount: messages.length + 1,
                  itemBuilder: (context, index) {
                    if (index == messages.length) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.7,
                            ),
                            child: ChatBubble(
                              clipper: ChatBubbleClipper6(type: BubbleType.receiverBubble),
                              backGroundColor: const Color(0xffE7E7ED),
                              margin: const EdgeInsets.only(top: 20),
                              child: Text(
                                question.question,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          if (question.type == 'Date') DateWidget(question: question)
                          else if (question.type == 'Number') NumberWidget(question: question)
                          else if (question.type == 'Video') VideoButtonWidget(question: question) 
                          else if (question.type == 'Options') OptionsWidget(question: question)
                          else if(question.type == 'Image') ImageWidget(question: question)
                          else if(question.type == 'Audio') AudioWidget(question: question)

                              else Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        controller: _controller,
                                        onSubmitted: (response) {
                                          context.read<ChatPageBloc>().add(
                                            ChatPageEvent.submitResponse(response: response),
                                          );
                                        },
                                        decoration: InputDecoration(
                                          hintText: 'Your answer goes in here...',
                                          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                    ),
                                    IconButton(
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
                                    )
                                  ],
                                ),
                        ],
                      );
                    } else {
                      final message = messages[index];
                      return ChatBubble(
                          clipper: ChatBubbleClipper6(
                            type: message.isUserMessage ? BubbleType.sendBubble : BubbleType.receiverBubble,
                          ),
                          alignment: message.isUserMessage ? Alignment.topRight : Alignment.topLeft,
                          margin: const EdgeInsets.only(top: 20),
                          backGroundColor: message.isUserMessage ? Colors.blue : const Color(0xffE7E7ED),
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.7,
                            ),
                            child: Text(
                              message.message ?? "",
                              style: TextStyle(
                                color: message.isUserMessage ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                      );
                    }
                  },
                );
              },
              finished: () {
                WidgetsBinding.instance!.addPostFrameCallback((_) {
                  Future.delayed(const Duration(seconds: 5));
                  AutoRouter.of(context).replace(const ThanksRoute());
                });
                return const Center(
                  child: Text("Thanks for participating!"),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
