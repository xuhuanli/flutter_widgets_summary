import 'package:flutter/material.dart';

class FutureBuilderWidget extends StatefulWidget {
  @override
  _FutureBuilderWidgetState createState() => _FutureBuilderWidgetState();
}

class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FutureBuilder<String>(
          future: mockNetworkFuture(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            print(snapshot.connectionState);
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                // 请求失败，显示错误
                return Text("Error: ${snapshot.error}");
              } else {
                // 请求成功，显示数据
                return Text("Contents: ${snapshot.data}");
              }
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Future<String> mockNetworkFuture() {
    return Future.delayed(Duration(milliseconds: 3000), () {
      return "我是从互联网上获取的数据";
      // throw Exception("error");
    });
  }
}
