import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';
class payment extends StatefulWidget {
  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
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
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Payment",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
            ), SizedBox(height: 25,)
            ,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=>settings()));
                },
                child: Container(
                  height: height/13,
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(child: Text("4",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                  Expanded(child: Text("June",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
                                ],
                              )
                          ),
                        ),
                      ),
                      Text("BDT : 40000",style: TextStyle(
                          color: AppColors.base,
                          fontWeight: FontWeight.bold,fontSize: 20
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.check_circle,size: 25,color:Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=>settings()));
                },
                child: Container(
                  height: height/13,
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(child: Text("3",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                  Expanded(child: Text("June",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
                                ],
                              )
                          ),
                        ),
                      ),
                      Text("BDT : 50000",style: TextStyle(
                          color: AppColors.base,
                          fontWeight: FontWeight.bold,fontSize: 20
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.check_circle,size: 25,color:Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=>settings()));
                },
                child: Container(
                  height: height/13,
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(child: Text("6",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                  Expanded(child: Text("June",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
                                ],
                              )
                          ),
                        ),
                      ),
                      Text("BDT : 20000",style: TextStyle(
                          color: AppColors.base,
                          fontWeight: FontWeight.bold,fontSize: 20
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.check_circle,size: 25,color:Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    ));
  }
}
