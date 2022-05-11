import 'package:amin_diagonastic/Screens/marketting_agent/rx_gallary.dart';
import 'package:amin_diagonastic/Screens/marketting_agent/visit_plan.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';
class agent_home extends StatefulWidget {
  @override
  _agent_homeState createState() => _agent_homeState();
}

class _agent_homeState extends State<agent_home> {
  @override
  Widget build(BuildContext context) {var height=MediaQuery.of(context).size.height;
  var width=MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=>visit_plan()));
                },
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
                        children: const [

                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Doctor Call",style: TextStyle(
                                color: AppColors.base,
                                fontWeight: FontWeight.bold,fontSize: 20
                            ),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>visit_plan()));
                },
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
                        children: const [

                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Doctor Visit Plan",style: TextStyle(
                                color: AppColors.base,
                                fontWeight: FontWeight.bold,fontSize: 20
                            ),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>rx_galalry()));
                },
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
                        children: const [

                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("RX Image Gallary",style: TextStyle(
                                color: AppColors.base,
                                fontWeight: FontWeight.bold,fontSize: 20
                            ),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=>settings()));
                },
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
                        children: const [

                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("View Doctor Call list",style: TextStyle(
                                color: AppColors.base,
                                fontWeight: FontWeight.bold,fontSize: 20
                            ),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=>settings()));
                },
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
                        children: const [

                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Take RX Image",style: TextStyle(
                                color: AppColors.base,
                                fontWeight: FontWeight.bold,fontSize: 20
                            ),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=>settings()));
                },
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
                        children: const [

                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Gift",style: TextStyle(
                                color: AppColors.base,
                                fontWeight: FontWeight.bold,fontSize: 20
                            ),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=>settings()));
                },
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
                        children: const [

                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Map",style: TextStyle(
                                color: AppColors.base,
                                fontWeight: FontWeight.bold,fontSize: 20
                            ),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=>settings()));
                },
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
                        children: const [

                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Doctor Add",style: TextStyle(
                                color: AppColors.base,
                                fontWeight: FontWeight.bold,fontSize: 20
                            ),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
            ),

          ],
        ),
      ),
    ));
  }
}
