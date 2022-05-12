import 'package:flutter/material.dart';

import 'faqs_source.dart';

class FaQs extends StatefulWidget {
  const FaQs({Key? key}) : super(key: key);

  @override
  State<FaQs> createState() => _FaQsState();
}

class _FaQsState extends State<FaQs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Icon(
                Icons.arrow_back_ios,
                size: 30,
                color: Colors.black,
              ),
              const SizedBox(
                height: 50,
              ),
              /* CircleAvatar(
                backgroundImage: AssetImage("assets/images/d1.jpg"),
                maxRadius: 35,
              ), */
              const Text(
                "FaQs",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 35),
              ),
              const SizedBox(
                height: 60,
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: DataSource.questionAnswer.length,
                itemBuilder: (context, index) {
                  return ExpansionTile(
                    iconColor: Colors.blue,
                    title: Text(
                      DataSource.questionAnswer[index]['question'],
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 22,
                        color: Colors.grey[700],
                      ),
                    ),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(DataSource.questionAnswer[index]['answer']),
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
