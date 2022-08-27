import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../success.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({
    Key? key,
    required this.testName,
  }) : super(key: key);
  final String testName;

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  String? formattedDate;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "${widget.testName} Tests",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 40,
                  ),
                ),
              ),

              SizedBox(height: height * 0.1),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.07),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Age",
                        hintStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Phone Number",
                        hintStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.35),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const Success(),
                            ),
                          );
                        },
                        child: Container(
                          width: width * 0.7,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.base,
                          ),
                          child: const Center(
                            child: Text(
                              "Confirm",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0, right: 150),
              //   child: TextFormField(
              //       decoration: const InputDecoration(hintText: "Test Name")),
              // ),
              // TableCalendar(
              //   focusedDay: selectedDay,
              //   firstDay: DateTime(1990),
              //   lastDay: DateTime(2050),
              //   calendarFormat: format,
              //   onFormatChanged: (CalendarFormat _format) {
              //     setState(() {
              //       format = _format;
              //     });
              //   },
              //   startingDayOfWeek: StartingDayOfWeek.sunday,
              //   daysOfWeekVisible: true,

              //   //Day Changed
              //   onDaySelected: (DateTime selectDay, DateTime focusDay) {
              //     setState(() {
              //       selectedDay = selectDay;
              //       focusedDay = focusDay;
              //       formattedDate =
              //           DateFormat.yMMMMd('en_US').format(focusedDay);
              //     });
              //     print(formattedDate);
              //   },
              //   selectedDayPredicate: (DateTime date) {
              //     return isSameDay(selectedDay, date);
              //   },

              //   //To style the Calendar
              //   calendarStyle: CalendarStyle(
              //     isTodayHighlighted: true,
              //     selectedDecoration: BoxDecoration(
              //       color: Colors.blue,
              //       shape: BoxShape.rectangle,
              //       borderRadius: BorderRadius.circular(5.0),
              //     ),
              //     selectedTextStyle: TextStyle(color: Colors.white),
              //     todayDecoration: BoxDecoration(
              //       color: Color(0xff6C63FE),
              //       shape: BoxShape.rectangle,
              //       borderRadius: BorderRadius.circular(5.0),
              //     ),
              //     defaultDecoration: BoxDecoration(
              //       shape: BoxShape.rectangle,
              //       borderRadius: BorderRadius.circular(5.0),
              //     ),
              //     weekendDecoration: BoxDecoration(
              //       shape: BoxShape.rectangle,
              //       borderRadius: BorderRadius.circular(5.0),
              //     ),
              //   ),
              //   headerStyle: HeaderStyle(
              //     formatButtonVisible: true,
              //     titleCentered: true,
              //     formatButtonShowsNext: false,
              //     formatButtonDecoration: BoxDecoration(
              //       color: Color(0xff6C63FE),
              //       borderRadius: BorderRadius.circular(5.0),
              //     ),
              //     formatButtonTextStyle: TextStyle(
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 25,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
