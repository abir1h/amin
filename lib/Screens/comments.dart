import 'package:amin_diagonastic/Screens/profile_section/test_scheduel_pop.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class comments extends StatefulWidget {
  @override
  _commentsState createState() => _commentsState();
}

class _commentsState extends State<comments> {

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
            child: Row(
              children: [
                Text(
                  "Comments",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),


              ],
            ),
          ),

         Divider(color: Colors.grey,),

        Container(height: height/1.35,
          child: ListView.builder(
              shrinkWrap: true,itemCount: 5,
              itemBuilder: (_,index){
                return   Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage:AssetImage("assets/images/d1.jpg"),
                        maxRadius: 25,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Steve Jhon",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lobortis, nunc vitae ornare ultricies, enim ligula fermentum neque, a iaculis neque mauris nec nunc. Etiam at luctus diam.",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                decoration: BoxDecoration(
                                    color: AppColors
                                        .base,
                                    borderRadius: BorderRadius.circular(10)
                                ),child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Center(child: Text("Reply",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                              ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    backgroundImage:AssetImage("assets/images/d1.jpg"),
                                    maxRadius: 25,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Steve Jhon",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lobortis, nunc vitae ornare ultricies, enim ligula fermentum neque, a iaculis neque mauris nec nunc. Etiam at luctus diam.",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 60,
                                            decoration: BoxDecoration(
                                                color: AppColors
                                                    .base,
                                                borderRadius: BorderRadius.circular(10)
                                            ),child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Center(child: Text("Reply",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                          ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),
         Row(
           children: [
             Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(


                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),

                     border: Border.all(color: AppColors.base)
                   ),
                   child: TextFormField(
                     decoration: InputDecoration(
                       suffixIcon: Icon(Icons.camera_alt,color: AppColors.base,)
                     ),
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Icon(Icons.send,color: AppColors.base,),
             )
           ],
         )
        ],
      ),),
    ));
  }
}
