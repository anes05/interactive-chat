import 'package:bloc/bloc.dart';
import 'package:chatbot/data/models/questionModel/questionModel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_page_event.dart';
part 'chat_page_state.dart';
part 'chat_page_bloc.freezed.dart';

class ChatPageBloc extends Bloc<ChatPageEvent, ChatPageState> {
  ChatPageBloc() : super(const ChatPageState.initialMessage()) {
    List<QuestionsModel> questionsList = [
      const QuestionsModel(
          questionId: 1,
          question: "Hello user, by accessing this page you have agreed to participate in the quiz, therefore, you will be replying to the next question, don't worry it won't take long",
          type: "Message",
          defaultValue: "this is default value",
          response: ""),
      const QuestionsModel(
          questionId: 2,
          question: "give me another date",
          type: "Options",
          options: ["option1","option2","option3"],
          defaultValue: "this is default value",
          response: ""),
      const QuestionsModel(
          questionId: 3,
          question: "what is your date of birth ?",
          type: "Video",
          defaultValue: "this is default value",
          response: ""),
      const QuestionsModel(
          questionId: 4,
          question: "How many years did you study?",
          type: "Number",
          defaultValue: "",
          response: ""),
      const QuestionsModel(
          questionId: 5,
          question: "what is your date of graduation ?",
          type: "Video",
          defaultValue: "this is default value",
          response: ""),
      const QuestionsModel(
          questionId: 6,
          question: "give me another date",
          type: "Image",
          defaultValue: "this is default value",
          response: ""),
      const QuestionsModel(
          questionId: 7,
          question: "give me another date",
          type: "Message",
          defaultValue: "this is default value",
          response: ""),
    ];
    int currentQuestionIndex=0;
    List<ChatMessage> messages = [];
    on<ChatPageEvent>((event,emit) async {
      await event.when(
          intialMessage: (){
            messages.add(ChatMessage(message: questionsList[0].question, isUserMessage: false));
            currentQuestionIndex = 1;
            emit(ChatPageState.question(
              question: questionsList[currentQuestionIndex],
              messages: List.from(messages),
            )
            );
            print(questionsList);
          },
          loadNextQuestion: () {
            if (currentQuestionIndex < questionsList.length) {
              emit(ChatPageState.question(
                  question: questionsList[currentQuestionIndex],
                  messages: List.from(messages)
              )
              );
              print("this is the output of the questions List on second event \n ");
              print(questionsList);
            } else {
              emit(const ChatPageState.finished());
              print("final output of questionsList");
              print(questionsList);
            }
          },
          submitResponse: (response) {
            questionsList[currentQuestionIndex] = questionsList[currentQuestionIndex].copyWith(response: response);
            messages.add(ChatMessage(message: questionsList[currentQuestionIndex].question, isUserMessage: false));
            messages.add(ChatMessage(message: response, isUserMessage: true));
            currentQuestionIndex++;
            add(const ChatPageEvent.loadNextQuestion());
          },
      );//end of when
    });
  }

/*    on<ChatPageEvent>((event, emit) async {
      emit(ChatPageState.initialMessage());
      print("first State with freezed! ");
      try {
        emit(ChatPageState.firstQuestion());
      }catch (e){
        print(e);
      }
    });*/

    /*on<ChatPageEvent>((event, emit) {
      switch (event.runtimeType) {
        case ChatPageEvent.intialMessage:
          emit(const ChatPageState.initialMessage());
          // Additional logic if needed
          Future.delayed(Duration(seconds: 5));
          emit(const ChatPageState.firstQuestion());

          break;
        case ChatPageEvent.loadFirstQuestion:
          emit(const ChatPageState.firstQuestion());
          // Additional logic if needed
          break;
      // Handle more events as needed
      }
    });*/

}
