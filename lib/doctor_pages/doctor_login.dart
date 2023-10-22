
import 'package:clinica_clone/doctor_pages/doctor_homepage.dart';
import 'package:clinica_clone/doctor_pages/scan_page.dart';
import 'package:clinica_clone/doctor_pages/signup.dart';
import 'package:clinica_clone/intro/user_auth_page.dart';
import 'package:clinica_clone/widgets/doctor_scanner.dart';
import 'package:flutter/material.dart';

class DoctorLogInPage extends StatefulWidget {
  const DoctorLogInPage({super.key});

  @override
  State<DoctorLogInPage> createState() => _DoctorLogInPageState();
}

class _DoctorLogInPageState extends State<DoctorLogInPage> {

  final _email = TextEditingController();
  final _id = TextEditingController();
  final _password = TextEditingController();

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
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Center(
                  child: Container(
                    margin:
                    const EdgeInsets.only(left: 40, right: 40, bottom: 50, top: 50),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.85,
                    child: Align(
                      //alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const UserAuthPage(),
                                      ));
                                },
                                child: const Icon(
                                  Icons.arrow_back_ios_new_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20, top: 30),
                              child: SizedBox(
                                  width: 160,
                                  height: 160,
                                  child: Image.asset(
                                    'assets/images/logo_pic.png',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 55, bottom: 15),
                              child: Text(
                                'Log In',
                                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                            ),
                            Container(
                                width: 400,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                                    border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: TextField(
                                    controller: _id,
                                    decoration: const InputDecoration(hintText: 'Medical ID', hintStyle: TextStyle(color: Colors.white),),
                                    style: const TextStyle(color: Colors.white),

                                  ),
                                )),
                            Container(
                                width: 400,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                                    border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: TextField(
                                    controller: _email,
                                    decoration: const InputDecoration(hintText: 'Email', hintStyle: TextStyle(color: Colors.white),),
                                    style: const TextStyle(color: Colors.white),

                                  ),
                                )),
                            Container(
                                width: 400,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                                    border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: TextField(
                                    controller: _password,
                                    decoration: const InputDecoration(hintText: 'Password', hintStyle: TextStyle(color: Colors.white),),
                                    style: const TextStyle(color: Colors.white),

                                  ),
                                )),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ScanHospital(),
                                    ));
                              },
                              child: Container(
                                width: 400,
                                height: 50,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 70, 254, 218),
                                    borderRadius: BorderRadius.all(Radius.circular(25))),
                                child: const Center(
                                  child: Text('LogIn'),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 47),
                              child: Row(
                                children: [
                                  const Text('Do not have an account? ', style: TextStyle(color: Colors.white),),
                                  GestureDetector(
                                    onTap: () {

                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const DoctorSignUpPage()),
                                          );
                                    },
                                    child: const Text(
                                      "Sing up",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                  )),
            ),
          ]
      ),
    );
  }
}