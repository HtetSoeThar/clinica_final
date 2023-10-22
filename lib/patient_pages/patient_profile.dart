

import 'package:clinica_clone/patient_pages/medical_record_model.dart';
import 'package:clinica_clone/patient_pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PatientProfilePage extends StatefulWidget {
  const PatientProfilePage({super.key});

  @override
  State<PatientProfilePage> createState() => _PatientProfilePageState();
}

class _PatientProfilePageState extends State<PatientProfilePage> {
  final disease = TextEditingController();
  String LongTermDisease = 'Add Long Term Disease';

  final medicine = TextEditingController();
  String allergicMedicine = 'Add Allergic Medicine';

  addDegree() {
    setState(() {
      LongTermDisease = disease.text;
      Navigator.pop(context);
    });
  }

  addMedicine() {
    Navigator.of(context).pop(medicine.text);
  }
  Future<String?> openDialog ()  {return  showDialog<String>(context: context, builder: (context) {




    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text("Long Term Disease"),
      content: TextField(
        decoration: InputDecoration(
            hintText: "Enter"
        ),
        controller: disease,
      ),
      actions: [
        ElevatedButton(onPressed: addDegree, child: Text("Add"))
      ],
    );

  });}

  Future<String?> openDialog1 ()  {return  showDialog<String>(context: context, builder: (context) {




    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text("Allergic Medicine"),
      content: TextField(
        decoration: InputDecoration(
            hintText: "Enter"
        ),
        controller: medicine,
      ),
      actions: [
        ElevatedButton(onPressed: addMedicine, child: Text("Add"))
      ],
    );

  });}
  @override
  Widget build(BuildContext context) {
    return Consumer<PickedDate>(builder: (context, value, child) => Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingPage(),
                  ));
            },
            child: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
            child: Container(
              margin:
              const EdgeInsets.only(left: 40, right: 40, bottom: 50, top: 10),
              width: double.infinity,
              height: 650,
              child: Align(
                //alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Stack(
                            children: [
                              Container(
                                width: 150,
                                height: 150,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 216, 216, 216),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(80))),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(80),
                                  child: Image.asset('assets/images/avatar.png', fit: BoxFit.cover,),
                                ),
                              ),
                             
                              const SizedBox(
                                width: 150,
                                height: 150,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(80)),
                                  // child: Image.asset(
                                  //   'assets/images/bitch.jpg',
                                  //   fit: BoxFit.cover,
                                  // ),
                                ),
                              )
                            ],
                          )),
                       Padding(
                        padding: const EdgeInsets.only(bottom: 35),
                        child: Text(
                          value.patientName,
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 170,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 227, 227, 227),
                            borderRadius: BorderRadius.all(Radius.circular(25))),
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Text(
                                      "Age : 69",
                                      style: TextStyle(fontSize: 19),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const SettingPage(),
                                          ));
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.only(bottom: 20),
                                      child: Icon(Icons.edit),
                                    ),
                                  )
                                ],
                              ),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Email : testing@gmail.com",
                                      style: TextStyle(fontSize: 18))),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Phone : 0969696969",
                                        style: TextStyle(fontSize: 19))),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 200,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 227, 227, 227),
                            borderRadius: BorderRadius.all(Radius.circular(25))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                           const Padding(
                              padding:  EdgeInsets.only(left: 30),
                              child: Align(alignment: Alignment.centerLeft,child: Text("Long Term Disease : ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [Text(LongTermDisease, style: TextStyle(fontSize: 16.5),), IconButton(onPressed: () async {
                                        final degreeName = await openDialog();
                                        setState(() {
                                          LongTermDisease = degreeName!;
                                        });
                                      }, icon: const Icon(Icons.add))],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding:  EdgeInsets.only(left: 30),
                              child: Align(alignment: Alignment.centerLeft,child: Text("Allergic Medicine : ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [Text(allergicMedicine, style: TextStyle(fontSize: 16.5),), IconButton(onPressed: () async {
                                        final degreeName = await openDialog1();
                                        setState(() {
                                          allergicMedicine = degreeName!;
                                        });
                                      }, icon: const Icon(Icons.add))],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            )),
      ),
    ),);
  }
}
