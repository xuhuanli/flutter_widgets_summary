import 'package:flutter/material.dart';

class StreamBuilderWidget extends StatefulWidget {
  @override
  _StreamBuilderWidgetState createState() => _StreamBuilderWidgetState();
}

class _StreamBuilderWidgetState extends State<StreamBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: StreamBuilder(
          stream: counter(),
          builder: (context, snapshot) {
            if (snapshot.hasError) return Text('Error: ${snapshot.error}');
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Text('没有Stream');
              case ConnectionState.waiting:
                return Text('等待数据...');
              case ConnectionState.active:
                return Text('active: ${snapshot.data}');
              case ConnectionState.done:
                return Text('Stream已关闭');
            }
            return null; // unreachable
            // return CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  Stream<int> counter() {
    return Stream.periodic(Duration(seconds: 1), (i) {
      return i;
    });
  }
}
