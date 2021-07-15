# flutter_adaptive_components

根据平台自适应的部件

## 例子

弹出alert弹窗：
```dart
    showAdaptiveAlert(
        context: context,
        style: AdaptiveStyle.adaptive,
        title: Text('标题'),
        content: Text('这是alert_dialog的内容'),
        leftText: Text('确认'),
        rightText: Text('取消'),
    );
```
弹出Okalert弹窗：
```dart
    showAdaptiveOK(
        context: context,
        style: AdaptiveStyle.adaptive,
        title: Text('标题'),
        content: Text('这是ok_dialog的内容'),
        buttontext: Text('确认'),
    );
```
使用底部弹窗
```dart
    showAdaptiveSheet(
        context: context,
        style: AdaptiveStyle.adaptive,
        maxheight: 400,
        isSafeArea: true,
        content: Column(
        children: [
            Container(
            height: 400,
            color: Theme.of(context).primaryColor,
            ),
        ],
        ),
    );
```
使用customtable-垂直合并
```dart
    CustomTable(
    tableTitle: tableTitle,
    verticalTableContent: verticalTableContent,
    tableMarge: 1,
    tableAxis: Axis.vertical,
    tableHeight: 30.0,
    ),
```
使用customtable-水平合并
```dart
    CustomTable(
        tableTitle: tableTitle,
        verticalTableContent: verticalTableContent,
        tableMarge: 1,
        tableAxis: Axis.horizontal,
        tableHeight: 30.0,
    ),
```

[查看完整源码](https://github.com/NephKis/flutter_adaptive_components/blob/master/example/lib/main.dart)
