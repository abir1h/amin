import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class about extends StatefulWidget {
  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: (){Navigator.pop(context);},
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: (){

                          },
                          child:Container(
                            decoration: BoxDecoration(
                              color: AppColors.base,
                              borderRadius: BorderRadius.circular(10)
                            ),child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Save",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          )
                      )
                  )],
              ),
            ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name",style:TextStyle(
          color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold
    ) ,),
            TextFormField(

    ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Age",style:TextStyle(
          color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold
    ) ,),
            TextFormField(

    ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("NID ",style:TextStyle(
          color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold
    ) ,),
            TextFormField(

    ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Address ",style:TextStyle(
          color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold
    ) ,),
            TextFormField(

    ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Phone Number ",style:TextStyle(
          color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold
    ) ,),
            TextFormField(

    ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email ",style:TextStyle(
          color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold
    ) ,),
            TextFormField(

    ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Blood Group ",style:TextStyle(
          color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold
    ) ,),
            TextFormField(

    ),
          ],
        ),
      ),
          ],
        ),
      ),
    ));
  }
}
