//
// This file defines the saved events shown on the calendar
// kEvents its called by Calendar to show the appropriate event for the selected days

import 'dart:collection';
// import 'package:project4/dbHelper.dart';
import 'package:table_calendar/table_calendar.dart';


class Event {
  final String title;
  // final String note;

  const Event(this.title);

  @override
  String toString() => title;
}

final kEvents = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_kEventSource2);

final _kEventSource2 = {
  DateTime.utc(2022, 5, 3):[Event('cs 378 final quiz due')],
  DateTime.utc(2022, 4, 28):[Event('Poster Presentation')],
  DateTime.utc(2022, 5, 5):[Event('cs 341 final')],
  DateTime.utc(2022, 4, 29):[Event('Project 4 due')],
  DateTime.utc(2022, 4, 28):[Event('Poster Presentation')],
  DateTime.utc(2022, 4, 3):[Event('Meeting')],
  DateTime.utc(2022, 4, 13):[Event('Asignment')]
};

void addEvent (Event2 e) {
  _kEventSource2[DateTime.utc(e.year!, e.month!, e.day!)] = [Event(e.event!)];
  print(_kEventSource2);
}

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 24, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 24, kToday.day);

//************************************************************************
class Event2 {
  int? id;
  int ? month;
  int ? day;
  int ? year;
  String ? event;

  Event2(this.id, this.month, this.day, this.year, this.event);

}