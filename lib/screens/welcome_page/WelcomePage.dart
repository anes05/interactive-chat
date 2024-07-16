import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chatbot/commons/colors/AppColors.dart';
import 'package:chatbot/commons/widgets/common_widgets.dart';
import 'package:chatbot/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.primaryBackground,
        child: Scaffold(
          backgroundColor: AppColors.primaryBackground,
          appBar: buildAppBar("Welcome to Interactive Quizz"),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50.0),
              pageBody(context,
                "assets/images/quiz.png",
                "Participate to Quiz !",
                "Our Team would be very happy if you choose to participate in this Quiz! it own't take long",
                "Start the quiz!", () {
                AutoRouter.of(context).push(const ChatRoute());
            }),
            ]
          ),
        )
    )
    );
  }
}
