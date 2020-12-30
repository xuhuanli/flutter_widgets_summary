import 'package:flutter/material.dart';

/// 对某一个组件设置透明度(动画透明) 完全透明时可以保留其位置
class OpacityWidget extends StatefulWidget {
  @override
  _OpacityWidgetState createState() => _OpacityWidgetState();
}

class _OpacityWidgetState extends State<OpacityWidget> {
  dynamic _opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          FlatButton(
            child: Text("click"),
            onPressed: _clickAction,
          )
        ],
      ),
      // body: buildOpacity(),
      body: buildAnimatedOpacity(),
    );
  }

  Widget buildOpacity() {
    return SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            Text("this is some text"),
            Opacity(
              opacity: 0.0,
              child: Text("this is some text"),
            ),
            Text("this is some text"),
            Text("this is some text"),
          ],
        ),
      ),
    );
  }

  Widget buildAnimatedOpacity() {
    return SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            Text("this is some text"),
            AnimatedOpacity(
              duration: Duration(milliseconds: 2000),
              opacity: _opacity,
              child: Text("this is some text"),
            ),
            Text("this is some text"),
            Text("this is some text"),
          ],
        ),
      ),
    );
  }

  void _clickAction() {
    setState(() {
      _opacity = 0.2;
    });
  }
}
