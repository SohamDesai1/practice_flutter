// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:intl/intl.dart';

void main() {
  runApp(
    const MaterialApp(home: TimeCounter()),
  );
}

class TimeCounter extends StatefulWidget {
  const TimeCounter({super.key});

  @override
  State<TimeCounter> createState() => _TimeCounterState();
}

class _TimeCounterState extends State<TimeCounter> {
  late DateTime? start = DateTime.now();
  late DateTime? end = DateTime.now();
  var diff;
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Date",
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? startDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2024));
                if (startDate != null && startDate != start) {
                  setState(() {
                    start = startDate;
                    show = true;
                  });
                }
              },
              child: Text("Start date"),
            ),
            SizedBox(
              height: 20,
            ),
            show
                ? ElevatedButton(
                    onPressed: () async {
                      DateTime? endDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2024));
                      if (endDate != null && endDate != end) {
                        setState(() {
                          end = endDate;
                          show = true;
                        });
                      }
                    },
                    child: Text("End date"),
                  )
                : Container(),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  diff = end?.difference(start!).inDays;
                });
              },
              child: Text("get difference"),
            ),
            SizedBox(
              height: 20,
            ),
            if (show)
              if (end!.isBefore(start!))
                Text("Invalid Range")
              else
                Text(
                    'Start Date:${DateFormat('yMd').format(start!)}   End Date: ${DateFormat('yMd').format(end!)}'),
            Text('Difference: $diff')
          ],
        ),
      ),
    );
  }
}
