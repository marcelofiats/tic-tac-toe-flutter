import 'package:flutter/material.dart';
import 'package:tictactoe/core/constants.dart';
import 'package:tictactoe/core/theme_app.dart';
import 'pages/game_page.dart';
import 'package:custom_splash/custom_splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: GAME_TITLE,
      theme: themeApp,
      home: CustomSplash(
          imagePath: 'imagens/tic1.png',
          backGroundColor: Colors.deepOrange,
          animationEffect: 'zoom-in',
          logoSize: 200,
          home: GamePage(),
          customFunction: duringSplash,
          duration: 2500,
          type: CustomSplashType.StaticDuration,
          outputAndHome: op),
    );
  }
}

Function duringSplash = () {
  print('Something background process');
  int a = 123 + 23;
  print(a);

  if (a > 100)
    return 1;
  else
    return 2;
};

Map<int, Widget> op = {1: GamePage(), 2: GamePage()};
