import 'package:clinica_clone/doctor_pages/doctor_login.dart';
import 'package:clinica_clone/doctor_pages/scan_page.dart';
import 'package:clinica_clone/patient_pages/login.dart';
import 'package:flutter/material.dart';

class UserAuthPage extends StatelessWidget {
  const UserAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
            child: Opacity(opacity: 0.7,child: Image.asset('assets/images/doctor.jpg', fit: BoxFit.cover)),
          ),

          Center(
              child: Container(
                margin: const EdgeInsets.only(left: 40, right: 40, top: 50),
                width: double.infinity,
                height: 550,
                child: Align(
                  //alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 160,
                            height: 160,
                            child: Image.asset(
                              'assets/images/logo_pic.png',
                              fit: BoxFit.cover,
                            )),
                        const Padding(
                          padding: EdgeInsets.only(top: 100, bottom: 30),
                          child: Text(
                            'Which User?',
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LogInPage(),
                                ));
                          },
                          child: Container(
                            width: 400,
                            height: 50,
                            decoration:  BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(Radius.circular(25)),border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid)),
                            child: const Center(
                              child: Text('Patient', style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const DoctorLogInPage(),));
                          } ,
                          child: Container(
                            width: 400,
                            height: 50,
                            decoration:  BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(Radius.circular(25)),border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid)),
                            child: const Center(
                              child: Text('Doctor', style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        ),

                      ],
                    )),
              ))
        ] ,
      ),
    );
  }
}