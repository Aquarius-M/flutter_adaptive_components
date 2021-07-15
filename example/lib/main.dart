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
    List tableTitle = ['title1', 'title2', 'title3', 'title4'];
    List tableContent = [
      {
        'img': '',
        'number': 4,
        "content": [
          {'1'},
          {'a', 'b', 'c', 'd'},
          {'0', '1', '2', '3'},
          {'4', '5', '6', '7'},
        ],
      },
      {
        'img': '',
        'number': 5,
        "content": [
          {'2'},
          {'e', 'f', 'g', 'h', 'i'},
          {'0', '1', '2', '3', '4'},
          {'5', '6', '7', '8', '9'},
        ],
      },
      {
        'img': '',
        'number': 5,
        "content": [
          {'3'},
          {'j', 'k', 'l', 'm', 'n'},
          {'0', '1', '2', '3', '4'},
          {'5', '6', '7', '8', '9'},
        ],
      },
      {
        'img': '',
        'number': 5,
        "content": [
          {'4'},
          {'o', 'p', 'q', 'r', 's'},
          {'0', '1', '2', '3', '4'},
          {'5', '6', '7', '8', '9'},
        ],
      },
      {
        'img': '',
        'number': 5,
        "content": [
          {'5'},
          {'t', 'u', 'v', 'w', 'x'},
          {'0', '1', '2', '3', '4'},
          {'5', '6', '7', '8', '9'},
        ],
      },
      {
        'img': '',
        'number': 5,
        "content": [
          {'6'},
          {'y', 'z', 'a', 'b', 'c'},
          {'0', '1', '2', '3', '4'},
          {'5', '6', '7', '8', '9'},
        ],
      },
      {
        'img': '',
        'number': 5,
        "content": [
          {'7'},
          {'d', 'e', 'f', 'g', 'h'},
          {'0', '1', '2', '3', '4'},
          {'5', '6', '7', '8', '9'},
        ],
      },
      {
        'img': '',
        'number': 5,
        "content": [
          {'8'},
          {'i', 'j', 'k', 'l', 'm'},
          {'0', '1', '2', '3', '4'},
          {'5', '6', '7', '8', '9'},
        ],
      },
      {
        'img': '',
        'number': 5,
        "content": [
          {'9'},
          {'n', 'o', 'p', 'q', 'r'},
          {'0', '1', '2', '3', '4'},
          {'5', '6', '7', '8', '9'},
        ],
      },
      {
        'img': '',
        'number': 5,
        "content": [
          {'10'},
          {'s', 't', 'u', 'v', 'w'},
          {'0', '1', '2', '3', '4'},
          {'5', '6', '7', '8', '9'},
        ],
      }
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: 5,
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
                MaterialButton(
                  color: Theme.of(context).primaryColor,
                  child: Text('BottomSheet'),
                  onPressed: () {
                    showAdaptiveSheet(
                      context: context,
                      style: AdaptiveStyle.adaptive,
                      maxheight: 400,
                      isSafeArea: true,
                      content: Column(
                        children: [
                          Text('data'),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomTable(
              height: 500,
              tableTitle: tableTitle,
              verticalTableContent: tableContent,
              tableMarge: 0,
              tableAxis: Axis.vertical,
              tableHeight: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
