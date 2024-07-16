import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chatbot/commons/widgets/common_widgets.dart';
import 'package:chatbot/commons/widgets/type_reply/audioWidget.dart';
import 'package:chatbot/commons/widgets/type_reply/dateWidget.dart';
import 'package:chatbot/commons/widgets/type_reply/imageWidget.dart';
import 'package:chatbot/commons/widgets/type_reply/messageWidget.dart';
import 'package:chatbot/commons/widgets/type_reply/numberWidget.dart';
import 'package:chatbot/commons/widgets/type_reply/optionsWidget.dart';
import 'package:chatbot/commons/widgets/type_reply/videoWidget.dart';
import 'package:chatbot/data/models/questionModel/questionModel.dart';
import 'package:chatbot/routes/app_router.gr.dart';
import 'package:chatbot/screens/chat_page/bloc/chat_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

@RoutePage()
class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    return BlocProvider(
      create: (_) => ChatPageBloc()..add(const ChatPageEvent.intialMessage()),
      child: Scaffold(
        appBar: buildAppBar("Interactive chat"),
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<ChatPageBloc, ChatPageState>(
                builder: (context, state) {
                  return state.when(
                    initialMessage: () {
                      // Trigger the next question after initial message is displayed
                      WidgetsBinding.instance!.addPostFrameCallback((_) {
                        context.read<ChatPageBloc>().add(const ChatPageEvent.loadNextQuestion());
                      });
                      return const Center(child: CircularProgressIndicator());
                    },
                    question: (question, messages) {
                      return ListView.builder(
                        reverse: false,
                        itemCount: messages.length + 1, // Add one for the question
                        itemBuilder: (context, index) {
                          if (index == messages.length) {
                            // Display the current question at the end
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
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        Future.delayed(const Duration(seconds: 2), () {
                          AutoRouter.of(context).replace(const ThanksRoute());
                        });
                      });
                      return const Center(
                        child: Text("Thanks for participating!"),
                      );
                    },
                  );
                },
              ),
            ),
            BlocBuilder<ChatPageBloc, ChatPageState>(
              builder: (context, state) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, -2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        child: state.maybeWhen(
                          question: (question, messages) {
                            if (question.type == 'Date') return DateWidget(question: question);
                            if (question.type == 'Number') return NumberWidget(question: question);
                            if (question.type == 'Video') return VideoButtonWidget(question: question);
                            if (question.type == 'Options') return OptionsWidget(question: question);
                            if (question.type == 'Image') return ImageWidget(question: question);
                            if (question.type == 'Audio') return AudioWidget(question: question);
                            return MessageWidget(question: question);
                          },
                          orElse: () => SizedBox.fromSize(),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
