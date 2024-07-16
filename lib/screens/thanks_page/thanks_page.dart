import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chatbot/commons/colors/AppColors.dart';
import 'package:chatbot/commons/widgets/common_widgets.dart';
import 'package:chatbot/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ThanksPage extends StatelessWidget {
  const ThanksPage({super.key});

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
                        "assets/images/check-mark.png",
                        "Thank You",
                        "Our Team is happy because you choose to participate in this Quiz!",
                        "Go Back to Welcome Page", () {
                          AutoRouter.of(context).push(const WelcomeRoute());
                        }),
                  ]
              ),
            )
        )
    );
  }
}
