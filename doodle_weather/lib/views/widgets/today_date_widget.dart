import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

/// This widget displays the date under today weather condition
class TodayDateWidget extends StatefulWidget {
  const TodayDateWidget({super.key});
  @override
  State<TodayDateWidget> createState() => _TodayDateWidgetState();
}

class _TodayDateWidgetState extends State<TodayDateWidget> {
  String date = DateFormat("MMMM d, EEEE").format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Container(
            alignment: Alignment.center,
            child: Text(
              date,
              style: const TextStyle(fontSize: 16, color: CupertinoColors.systemGrey),
            ),
          );
  }
}