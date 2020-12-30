import 'package:flutter/material.dart';

class FadeTransitionWidget extends StatefulWidget {
  @override
  _FadeTransitionWidgetState createState() => _FadeTransitionWidgetState();
}

class _FadeTransitionWidgetState extends State<FadeTransitionWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation animation;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FadeTransition(
          opacity: animation,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
