import 'package:test_score_app/models/calendar/meeting.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class CalendarViewScreen extends StatefulWidget {
  const CalendarViewScreen({super.key, required this.title});

  final String title;

  @override
  State<CalendarViewScreen> createState() => _CalendarViewScreenState();
}

class _CalendarViewScreenState extends State<CalendarViewScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SfCalendar(
        view: CalendarView.week,
        firstDayOfWeek: 1,
        dataSource: MeetingDataSource(_getDataSource()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  List<Meeting> _getDataSource(){
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today  = DateTime.now();
    final DateTime startTime = DateTime(today.year,today.month,today.day,9,0,0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings.add(
        Meeting('Conference', startTime, endTime, const Color(0xFF0F8644), false));
    return meetings;

  }

  

}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source){
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}