import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';

class help_support extends StatefulWidget {
  @override
  State<help_support> createState() => _help_supportState();
}

class _help_supportState extends State<help_support> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Help & Support",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ],
                  ),
                ),                SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Write down your issue"),
                  ),
                ) ,

                SizedBox(height: 15,),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: MediaQuery.of(context).size.width/1.8,
                      decoration: BoxDecoration(
                        color: AppColors.base,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Send",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),

                Center(child: Text('OR',style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold),)),
                Center(child: Text('call: +996854612',style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold),))

              ],
            ),
          ),
        ));
  }
}
