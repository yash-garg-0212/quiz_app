import 'package:flutter/material.dart';
import 'package:quiz_app/model/summary_items.dart';

class Question extends StatelessWidget {
  const Question(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItems(
                itemData: data,
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
