import 'package:amin_diagonastic/Screens/Auth/login_screen.dart';
import 'package:amin_diagonastic/Screens/MainHome.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';
class select_language extends StatefulWidget {
  @override
  _select_languageState createState() => _select_languageState();
}

class _select_languageState extends State<select_language> {
  bool isselected_english=false;
  bool isselected_englishbangla=false;
  bool apear=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35,),
              CircleAvatar(
                backgroundImage:AssetImage("assets/images/d1.jpg"),
                maxRadius: 35,
              ),
Text("Hi,Margaret",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
SizedBox(height: 20,),
Row(
  children: [
        Expanded(child: Text("Please select your prefered language for facilate communication",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey),)),
  ],
),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  setState(() {
                    isselected_english=true;
                    isselected_englishbangla=false;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/12,
                  child: Row(
                    children: [
                      isselected_english!=true?Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            border:Border.all(color: Colors.black),
                            shape: BoxShape.circle
                        ),
                      ):Icon(Icons.check_circle,color: Colors.green,),
                      SizedBox(width: 8,),
                      Text("English",style: TextStyle(
                        color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20
                      ),)
                    ],
                  )
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    isselected_english=false;
                    isselected_englishbangla=true;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/12,
                  child: Row(
                    children: [
                      isselected_englishbangla!=true?Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            border:Border.all(color: Colors.black),
                            shape: BoxShape.circle
                        ),
                      ):Icon(Icons.check_circle,color: Colors.green,),
                      SizedBox(width: 8,),
                      Text("বাংলা",style: TextStyle(
                        color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20
                      ),)
                    ],
                  )
                ),
              ),

              Center(
                child: InkWell(
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (_)=>login()));
                  },
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: AppColors.base,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text("Select",style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    ));
  }
}
