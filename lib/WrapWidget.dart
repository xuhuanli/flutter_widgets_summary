import 'package:flutter/material.dart';

/// wrap 在dialog buttons 和Chip有比较好的作用
class WrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return buildRow();
    return buildWrap();
  }

  Scaffold buildRow() {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }

  Scaffold buildWrap() {
    return Scaffold(
      appBar: AppBar(),
      body: Wrap(
        direction: Axis.horizontal,
        spacing: 10.0,
        runSpacing: 20.0,
        children: [
          Chip(
            backgroundColor: Colors.red,
            label: Text("dsajdklasjdl"),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
