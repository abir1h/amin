import 'package:flutter/material.dart';
class notification extends StatefulWidget {
  @override
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) { var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: (){Navigator.pop(context);},
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Notifications",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Container(
              width: width,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) {
                    return    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Text("Dr. Steve ",style: TextStyle(
                                            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16
                                        ),),Text("  confirmed your booking request",style: TextStyle(
                                            color: Colors.grey,fontWeight: FontWeight.normal
                                        ),)
                                      ],
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundImage:AssetImage("assets/images/d1.jpg"),
                                    maxRadius: 25,
                                  ),
                                ],
                              ),Divider(color: Colors.grey,)
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
