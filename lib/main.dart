import 'package:flutter/material.dart';

import 'AnimatiedContainerWidget.dart';
import 'ExpandedWidget.dart';
import 'FadeTransitionWidget.dart';
import 'FutureBuilderWidget.dart';
import 'OpacityWidget.dart';
import 'SafeAreaWidget.dart';
import 'StreamBuilderWidget.dart';
import 'WrapWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "FadeTransitionWidget",
      routes: {
        "SafeAreaWidget": (context) => SafeAreaWidget(),
        "ExpandedWidget": (ctx) => ExpandedWidget(),
        "WrapWidget": (ctx) => WrapWidget(),
        "AnimatedContainerWidget": (ctx) => AnimatedContainerWidget(),
        "OpacityWidget": (ctx) => OpacityWidget(),
        "FutureBuilderWidget": (ctx) => FutureBuilderWidget(),
        "StreamBuilderWidget": (ctx) => StreamBuilderWidget(),
        "FadeTransitionWidget": (ctx) => FadeTransitionWidget(),
      },
      home: SafeAreaWidget(),
    );
  }
}
