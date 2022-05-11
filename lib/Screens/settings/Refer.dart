import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';

class refer extends StatefulWidget {
  @override
  State<refer> createState() => _referState();
}

class _referState extends State<refer> {
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
                        "Refer",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ],
                  ),
                ),                SizedBox(height: 30,),

                Center(
  child:   Container(

    width: MediaQuery.of(context).size.width/2,

    height: MediaQuery.of(context).size.height/20,

    decoration: BoxDecoration(

      border:Border.all(color: AppColors.base,),

      borderRadius: BorderRadius.circular(5)

    ),child: Center(child: Text("ABC_XYZ-PQR",style: TextStyle(color: AppColors.base,fontWeight: FontWeight.w900),)),

  ),
),
                 Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(hintText: "                                   Enter a referal code",


                        ),
                      ),
                    ],
                  ),
                ),
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
                          child: Text("Confirm",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),

              ],
            ),
          ),
        ));
  }
}
