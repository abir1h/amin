import 'package:amin_diagonastic/Screens/Auth/regster_option.dart';
import 'package:amin_diagonastic/Screens/Doctor/doctor_mainHome.dart';
import 'package:amin_diagonastic/Screens/marketting_agent/home.dart';
import 'package:amin_diagonastic/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../MainHome.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  bool doctor_selected = false;
  bool patient_selected = false;
  bool m_agent = false;
  var doctor;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: WaveClipperTwo(flip: false),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFFB81C2B),
                        Color(0xFF7B0C16),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Center(
                      child: Image.asset(
                        "assets/images/Asset_1.png",
                        height: MediaQuery.of(context).size.height / 7,
                        width: MediaQuery.of(context).size.width / 2,
                      ),
                    ),
                  ),
                ),
              ),
              const Text(
                'Log In',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: "Phone Number"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: "Password"),
                ),
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Text(
                    "Forget Password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              doctor_selected = true;
                              patient_selected = false;
                              m_agent = false;
                              doctor = '1';
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                                color: doctor_selected == false
                                    ? AppColors.base
                                    : Colors.red,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/doc.png'),
                            ),
                          ),
                        ),
                        const Text(
                          'Doctor',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                      width: 30,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              doctor_selected = false;
                              patient_selected = true;
                              doctor = '0';
                              m_agent = false;
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                                color: patient_selected == false
                                    ? AppColors.base
                                    : Colors.red,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/pat.png'),
                            ),
                          ),
                        ),
                        const Text(
                          'Patient',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                doctor_selected = false;
                                patient_selected = false;
                                doctor = '3';
                                m_agent = true;
                              });
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height / 12,
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                  color: m_agent == false
                                      ? AppColors.base
                                      : Colors.red,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('assets/images/pat.png'),
                              ),
                            ),
                          ),
                          const Text(
                            ' Agent',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    print(doctor_selected);
                    if (doctor == '0') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => MainHome()));
                    } else if (doctor == '1') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => doctor_mainHome()));
                    } else {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => agent_home()));
                    }
                  },
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: AppColors.base,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account ? ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Register_option(),
                          ),
                        );
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          color: AppColors.base,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
