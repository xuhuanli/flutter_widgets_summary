import 'package:flutter/material.dart';

class SafeAreaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildListView();
    // return buildScaffold();
  }

  Widget buildListView() {
    // 当remove SafeArea时 页面上滑会在状态栏显示内容
    return SafeArea(
      // top: false, // 忽略某一个方向的安全性
      child: ListView(
        children: List.generate(100, (index) => Text("this is some text")),
      ),
    );
  }

  Scaffold buildScaffold() {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          children: List.generate(
            100,
            (index) => Text("This is some text"),
          ),
        ),
      ),
    );
  }
}
