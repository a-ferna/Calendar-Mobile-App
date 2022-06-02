//
// Project 4 - CS 378
// by Ariadna Fernandez
// This project consists of a calendar with presaved events for a couple
// of dates. The user can click and select days with dots on the bottom of the cell
// which signifies that an event has been saved for that day and a list of event will
// appear at the bottom of the calendar. You can select multiple dates at the time.
// Clicking the 'x' under the appbar will clear the selections.
// At the start of the applications, there are sliding intro slides with 2 previously
// set remainder and one slide with quotes. The user has the option to skip the slides
// go right to the calendar of swipe through the slides and then get to the calendar.
// Once in the calendar screen there is an 'add' icon that takes you to another
// screen where the idea was to let the user enter a date and add an event to the calendar.
// However, I wasn't able to successfully implement this so event you can enter stuff,
// it is not updated on the calendar.
// The new packages used in this application are:
// TableCalendar - https://pub.dev/packages/table_calendar
// Intro Slides - https://pub.dev/packages/intro_views_flutter
// Animated Text - https://pub.dev/packages/animated_text_kit
//


import 'package:flutter/material.dart';
import 'package:project4/StartingPages.dart';


void main() {
  runApp(StartingPages());
}


