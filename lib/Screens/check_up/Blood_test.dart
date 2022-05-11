import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../success.dart';
class blood_test extends StatefulWidget {
  @override
  _blood_testState createState() => _blood_testState();
}

class _blood_testState extends State<blood_test> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  String? formattedDate;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: (){Navigator.pop(context);},
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Tests",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 150),
              child: TextFormField(
                  decoration:InputDecoration(
                      hintText:"Name"
                  )
              ),
            ),  Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 150),
              child: TextFormField(
                  decoration:InputDecoration(
                      hintText:"Age"
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 150),
              child: TextFormField(
                  decoration:InputDecoration(
                      hintText:"Phone Number"
                  )
              ),
            ),Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 150),
              child: TextFormField(
                  decoration:InputDecoration(
                      hintText:"Blood Test Name"
                  )
              ),
            ),

            SizedBox(height: 10,),
            TableCalendar(

              focusedDay: selectedDay,
              firstDay: DateTime(1990),
              lastDay: DateTime(2050),
              calendarFormat: format,
              onFormatChanged: (CalendarFormat _format) {
                setState(() {
                  format = _format;
                });
              },
              startingDayOfWeek: StartingDayOfWeek.sunday,
              daysOfWeekVisible: true,

              //Day Changed
              onDaySelected: (DateTime selectDay, DateTime focusDay) {
                setState(() {
                  selectedDay = selectDay;
                  focusedDay = focusDay;
                  formattedDate =
                      DateFormat.yMMMMd('en_US').format(focusedDay);
                });
                print(formattedDate);
              },
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectedDay, date);
              },

              //To style the Calendar
              calendarStyle: CalendarStyle(
                isTodayHighlighted: true,
                selectedDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                selectedTextStyle: TextStyle(color: Colors.white),
                todayDecoration: BoxDecoration(
                  color: Color(0xff6C63FE),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                defaultDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                weekendDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: true,
                titleCentered: true,
                formatButtonShowsNext: false,
                formatButtonDecoration: BoxDecoration(
                  color: Color(0xff6C63FE),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                formatButtonTextStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),SizedBox(height: 25,),
            Center(
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>success()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.base
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 18.0,right: 18,top: 5,bottom: 5),
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ), );
  }
}
