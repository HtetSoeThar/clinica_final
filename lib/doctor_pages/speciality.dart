import 'package:clinica_clone/doctor_pages/signup.dart';
import 'package:clinica_clone/patient_pages/medical_record_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Speciality extends StatefulWidget {
  const Speciality({super.key});

  @override
  State<Speciality> createState() => _SpecialityState();
}

class _SpecialityState extends State<Speciality> {
  bool? isChecked = false;
  bool? isChecked1 = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;
  bool? isChecked4 = false;
  bool? isChecked5 = false;
  bool? isChecked6 = false;
  bool? isChecked7 = false;
  bool? isChecked8 = false;
  bool? isChecked9 = false;
  String selectedSpec = "Heart and Veins";
  String selectedSpec1 = "Brain Nerves";
  String selectedSpec2 = "Bones and Skulls";
  String selectedSpec3 = "Optic";
  String selectedSpec4 = "General";
  String selectedSpec5 = "Internal Organs";

  @override
  Widget build(BuildContext context) {
    return Consumer<PickedDate>(builder: (context, value, child) => Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 1,
              child: Opacity(opacity: 0.7,child: Image.asset('assets/images/medical.jpg', fit: BoxFit.cover)),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.87,
              margin: const EdgeInsets.only(top: 30, left: 20, right: 20),

              child:  Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Clinica',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 34, 203, 170)),),
                  const Text("Choose Speciality", style: TextStyle(fontSize: 22, color: Colors.white),),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: MediaQuery.of(context).size.height * 0.58,

                    child: GridView(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 1.5 / 1,
                      ),
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Checkbox(     side: const BorderSide(color: Colors.white),value: isChecked, onChanged: (value) {
                                  setState(() {
                                    isChecked = value;
                                    final chooseSpec  = context.read<PickedDate>();
                                    if (isChecked == true) {chooseSpec.checkedSpeciality(selectedSpec);}
                                  });
                                }, activeColor: Colors.cyanAccent,),
                                Padding(
                                    padding: const EdgeInsets.only(right: 7),child: Text(selectedSpec, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Checkbox(     side: const BorderSide(color: Colors.white),value: isChecked1, onChanged: (value) {
                                  setState(() {
                                    isChecked1 = value;
                                    final chooseSpec  = context.read<PickedDate>();
                                    if (isChecked1 == true) {chooseSpec.checkedSpeciality(selectedSpec1);}
                                  });
                                }, activeColor: Colors.cyanAccent,), Padding(
                                    padding: const EdgeInsets.only(right: 13),child: Text(selectedSpec1, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Checkbox(     side: const BorderSide(color: Colors.white),value: isChecked2, onChanged: (value) {
                                  setState(() {
                                    isChecked2 = value;
                                    final chooseSpec  = context.read<PickedDate>();
                                    if (isChecked2 == true) {chooseSpec.checkedSpeciality(selectedSpec2);}
                                  });
                                }, activeColor: Colors.cyanAccent,),
                                Padding(
                                    padding: const EdgeInsets.only(right: 6),child: Text(selectedSpec2, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Checkbox(     side: const BorderSide(color: Colors.white),value: isChecked3, onChanged: (value) {
                                  setState(() {
                                    isChecked3 = value;
                                    final chooseSpec  = context.read<PickedDate>();
                                    if (isChecked3 == true) {chooseSpec.checkedSpeciality(selectedSpec3);}
                                  });
                                }, activeColor: Colors.cyanAccent,),
                                Padding(
                                    padding: const EdgeInsets.only(right: 45),child: Text(selectedSpec3, style: const TextStyle(fontSize: 14.5, fontWeight: FontWeight.bold, color: Colors.white),))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Checkbox(     side: const BorderSide(color: Colors.white),value: isChecked4, onChanged: (value) {
                                  setState(() {
                                    isChecked4 = value;
                                    final chooseSpec  = context.read<PickedDate>();
                                    if (isChecked4 == true) {chooseSpec.checkedSpeciality(selectedSpec4);}
                                  });
                                }, activeColor: Colors.cyanAccent,),
                                Padding(
                                    padding: const EdgeInsets.only(right: 40),child: Text(selectedSpec4, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Checkbox(     side: const BorderSide(color: Colors.white),value: isChecked5, onChanged: (value) {
                                  setState(() {
                                    isChecked5 = value;
                                    final chooseSpec  = context.read<PickedDate>();
                                    if (isChecked5 == true) {chooseSpec.checkedSpeciality(selectedSpec5);}
                                  });
                                }, activeColor: Colors.cyanAccent,),
                                Padding(
                                    padding: const EdgeInsets.only(right: 7),child: Text(selectedSpec5, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Checkbox(     side: const BorderSide(color: Colors.white),value: isChecked6, onChanged: (value) {
                                  setState(() {
                                    isChecked6 = value;
                                  });
                                }, activeColor: Colors.cyanAccent,),
                                const Padding(
                                    padding: EdgeInsets.only(right: 7),child: Text("Heart and Veins", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Checkbox(     side: const BorderSide(color: Colors.white),value: isChecked7, onChanged: (value) {
                                  setState(() {
                                    isChecked7 = value;
                                  });
                                }, activeColor: Colors.cyanAccent,),
                                const Padding(
                                    padding: EdgeInsets.only(right: 7),child: Text("Heart and Veins", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Checkbox(     side: const BorderSide(color: Colors.white),value: isChecked8, onChanged: (value) {
                                  setState(() {
                                    isChecked8 = value;
                                  });
                                }, activeColor: Colors.cyanAccent,),
                                const Padding(
                                    padding: EdgeInsets.only(right: 7),child: Text("Heart and Veins", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Checkbox(     side: const BorderSide(color: Colors.white),value: isChecked9, onChanged: (value) {
                                  setState(() {
                                    isChecked9 = value;
                                  });
                                }, activeColor: Colors.cyanAccent,),
                                const Padding(
                                    padding: EdgeInsets.only(right: 7),child: Text("Heart and Veins", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),))
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DoctorSignUpPage(),));
                    }, child: Text('Choose')),
                  )
                ],
              ),
            ),
          ]
        ),
      ),
    ),);
  }
}
