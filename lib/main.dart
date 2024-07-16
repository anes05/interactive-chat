import 'package:chatbot/routes/app_router.dart';
import 'package:chatbot/screens/chat_page/chat_page.dart';
import 'package:chatbot/screens/welcome_page/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppRouter appRouter= AppRouter();
    return ScreenUtilInit(
      child: MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        //home: const MyHomePage(title: 'Flutter Demo Home Page'),
        //home: const WelcomePage(),
        routerConfig: appRouter.config() ,
      ),
    );
  }
}