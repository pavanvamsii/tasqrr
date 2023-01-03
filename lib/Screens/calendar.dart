// // ignore_for_file: unused_import, depend_on_referenced_packages, prefer_const_constructors, camel_case_types

// import 'package:flutter/material.dart';

// import 'package:table_calendar/table_calendar.dart';

// class table_calendar extends StatelessWidget {
//   const table_calendar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: calendar(),
//     );
//   }
// }

// class calendar extends StatefulWidget {
//   const calendar({super.key});

//   @override
//   State<calendar> createState() => _calendarState();
// }

// class _calendarState extends State<calendar> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
//         child: TableCalendar(
//           firstDay: DateTime.utc(2001, 3, 10),
//           lastDay: DateTime.utc(2030, 3, 14),
//           focusedDay: DateTime.now(),
//           headerVisible: true,
//           daysOfWeekVisible: true,
//           shouldFillViewport: false,
//           sixWeekMonthsEnforced: true,
//           headerStyle: HeaderStyle(
//               titleTextStyle: TextStyle(
//                   fontSize: 20,
//                   color: Colors.red,
//                   fontWeight: FontWeight.w600)),
//           calendarStyle: CalendarStyle(
//               todayTextStyle: TextStyle(
//                   color: Colors.white,
//                   fontSize: 17,
//                   fontWeight: FontWeight.w600)),
//         ),
//       ),
//     );
//   }
// }

// -----------------------------------------------------------------------------

// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class table_calendar extends StatelessWidget {
  const table_calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calendar(),
    );
  }
}

class calendar extends StatefulWidget {
  const calendar({super.key});

  @override
  State<calendar> createState() => _calendarState();
}

class _calendarState extends State<calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: SfCalendar(
            view: CalendarView.month,
            firstDayOfWeek: 1,
            monthViewSettings: MonthViewSettings(
                showAgenda: true,
                appointmentDisplayMode: MonthAppointmentDisplayMode.indicator),
            cellBorderColor: Colors.transparent,
            blackoutDates: [
              DateTime.now().subtract(Duration(hours: 48)),
              DateTime.now().subtract(Duration(hours: 24))
            ],
            dataSource: MeetingDataSource(getAppointments()),
          )),
    );
  }
}

List<Appointment> getAppointments() {
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime starttime1 =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endtime1 = starttime1.add(const Duration(minutes: 30));

  final DateTime starttime2 =
      DateTime(today.year, today.month, today.day, 12, 0, 0);
  final DateTime endtime2 = starttime2.add(const Duration(hours: 1));

  final DateTime starttime3 =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endtime3 = starttime3.add(const Duration(hours: 1));

  meetings.add(Appointment(
      endTime: endtime1,
      startTime: starttime1,
      subject: 'conference',
      color: Colors.orange));

  meetings.add(Appointment(
      endTime: endtime2,
      startTime: starttime2,
      subject: 'Update call',
      color: Colors.purple,
      recurrenceRule: 'FREQ=DAILY;COUNT=5'));

  meetings.add(Appointment(
      endTime: endtime3,
      startTime: starttime3,
      subject: 'StandUp Call',
      color: Colors.green,
      recurrenceRule: 'FREQ=DAILY;COUNT=5'));

  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
