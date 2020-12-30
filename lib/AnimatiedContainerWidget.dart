import 'package:flutter/material.dart';

/// 渐变动画容器 包含颜色宽高形状边框变换等等
class AnimatedContainerWidget extends StatefulWidget {
  @override
  _AnimatedContainerWidgetState createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  var _color = Color(0xFF0000FF);
  var _borderRadius = BorderRadius.circular(10);
  var _height = 100.0;

  @override
  Widget build(BuildContext context) {
    var _myDuration = Duration(milliseconds: 2000);
    return Scaffold(
      appBar: AppBar(
        actions: [
          FlatButton(onPressed: _changeColor, child: Text("changeColor"))
        ],
      ),
      body: AnimatedContainer(
        height: _height,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
          color: _color,
        ),
        duration: _myDuration,
        child: Text("some other widgets"),
      ),
    );
  }

  void _changeColor() {
    setState(() {
      // this._color = Colors.yellow;
      _height = _height + 100.0;
      _borderRadius = BorderRadius.circular(30);
    });
  }
}
