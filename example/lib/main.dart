import 'package:flutter/material.dart';
import 'package:flutter_adaptive_components/flutter_adaptive_components.dart';

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
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Theme.of(context).primaryColor,
              child: Text('AlertDialog'),
              onPressed: () {
                showAdaptiveAlert(
                  context: context,
                  style: AdaptiveStyle.adaptive,
                  title: Text('标题'),
                  content: Text('这是alert_dialog的内容'),
                  leftText: Text('确认'),
                  rightText: Text('取消'),
                );
              },
            ),
            MaterialButton(
              color: Theme.of(context).primaryColor,
              child: Text('OKDialog'),
              onPressed: () {
                showAdaptiveOK(
                  context: context,
                  style: AdaptiveStyle.adaptive,
                  title: Text('标题'),
                  content: Text('这是ok_dialog的内容'),
                  buttontext: Text('确认'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
