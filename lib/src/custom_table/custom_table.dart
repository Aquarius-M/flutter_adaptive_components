import 'package:flutter/material.dart';

class CustomTable extends StatelessWidget {
  /// 单个单元格高度
  final double? tableHeight;

  /// 表格高度
  final double? height;

  /// 合并单元格下标
  final int? tableMarge;

  /// 表格的title
  final List tableTitle;

  /// 合并单元格的方向
  final Axis? tableAxis;

  /// 需要垂直方向的表格内容
  final List? verticalTableContent;

  /// 需要水平方向的表格内容
  final List? horizontalTableContent;

  /// 合并单元格内的内容
  final Widget? margeContent;

  CustomTable({
    this.tableHeight: 30.0,
    this.height,
    this.tableMarge,
    this.margeContent,
    required this.tableTitle,
    this.tableAxis: Axis.vertical,
    this.horizontalTableContent,
    this.verticalTableContent,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            children: tableTitle.asMap().keys.map<Widget>((i) {
              return Expanded(
                child: Container(
                  height: tableHeight ?? 30.0,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(),
                      left: BorderSide(),
                      right: BorderSide(),
                      bottom: BorderSide(),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    tableTitle[i],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        Container(
          height: height ?? null,
          child: SingleChildScrollView(
            child: Column(
              children: tableAxis == Axis.vertical
                  ? verticalTableContent!.asMap().keys.map((x) {
                      return Row(
                        children: verticalTableContent![x]['content']
                            .asMap()
                            .keys
                            .map<Widget>((y) {
                          return Expanded(
                            child: Column(
                              children: verticalTableContent![x]['content'][y]
                                  .map<Widget>((i) {
                                return Container(
                                  height: tableMarge == y
                                      ? tableHeight! *
                                          verticalTableContent![x]['number']
                                      : tableHeight!,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(),
                                      left: BorderSide(),
                                      right: BorderSide(),
                                      // bottom:BorderSide(),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: tableMarge == y
                                      ? margeContent ?? Text(i.toString())
                                      : i == ''
                                          ? Text('-')
                                          : Text(i.toString()),
                                );
                              }).toList(),
                            ),
                          );
                        }).toList(),
                      );
                    }).toList()
                  : horizontalTableContent!.asMap().keys.map((x) {
                      return Column(
                        children: horizontalTableContent![x]['content']
                            .asMap()
                            .keys
                            .map<Widget>((y) {
                          return Row(
                            children: horizontalTableContent![x]['content'][y]
                                .map<Widget>((i) {
                              return Expanded(
                                child: Container(
                                  height: tableHeight!,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      left: BorderSide(),
                                      right: BorderSide(),
                                      bottom: BorderSide(),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: margeContent ?? Text(i.toString()),
                                ),
                              );
                            }).toList(),
                          );
                        }).toList(),
                      );
                    }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
