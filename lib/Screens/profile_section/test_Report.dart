import 'package:amin_diagonastic/Screens/profile_section/test_scheduel_pop.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Test_report extends StatefulWidget {
  @override
  _Test_reportState createState() => _Test_reportState();
}

class _Test_reportState extends State<Test_report> {

  var val;
  List months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  var month_collectio;
  var now = new DateTime.now();
  var current_mon;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    current_mon = DateTime.february;
    print(months[current_mon-1]);
  }

  var _selectedValue;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: (){Navigator.pop(context);},
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Test Report",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),

              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Your Tests",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        ),
                    child: Center(
                      child: new DropdownButton<String>(
                        iconEnabledColor: AppColors.base,

                        hint: month_collectio == null
                            ? const Text("Select Month",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: AppColors.base))
                            : Text(month_collectio!,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: AppColors.base)),
                        items: months
                            .map<DropdownMenuItem<String>>(
                                (value) => new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(
                                value,
                              ),
                            ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            month_collectio = value;

                          });
                          print(month_collectio);
                        },
                        underline:
                        DropdownButtonHideUnderline(child: Container()),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),

          DatePicker(
            DateTime.now(),height: 100,
            initialSelectedDate: DateTime.now(),
            selectionColor: AppColors.base,
            selectedTextColor: Colors.white,
            onDateChange: (date) {
              // New date selected
              setState(() {
                _selectedValue = date;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){

                // Navigator.push(context, MaterialPageRoute(builder: (_)=>Test_report()));

              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Date : 12-15-2022",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                          Text("8 PM",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)
                        ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: height/15,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,boxShadow: [
                        BoxShadow(
                          color:AppColors.inner.withOpacity(.4),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset('assets/images/covid.svg',height: 20,width: 20,color: AppColors.base,),
                                  ),
                                ),
                              ),
                              Text("Covid Test ",style: TextStyle(
                                  color: AppColors.base,
                                  fontWeight: FontWeight.bold,fontSize: 20
                              ),),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.arrow_forward_ios,size: 25,color: AppColors.base,),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){

                // Navigator.push(context, MaterialPageRoute(builder: (_)=>Test_report()));

              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Date : 12-15-2022",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                          Text("8 PM",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)
                        ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: height/15,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,boxShadow: [
                        BoxShadow(
                          color:AppColors.inner.withOpacity(.4),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset('assets/images/ultra.svg',height: 20,width: 20,color: AppColors.base,),
                                  ),
                                ),
                              ),
                              Text("Ultrasonography",style: TextStyle(
                                  color: AppColors.base,
                                  fontWeight: FontWeight.bold,fontSize: 20
                              ),),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.arrow_forward_ios,size: 25,color: AppColors.base,),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),),
    ));
  }
}
