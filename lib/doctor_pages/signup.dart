

import 'package:clinica_clone/doctor_pages/doctor_login.dart';
import 'package:clinica_clone/doctor_pages/scan_page.dart';
import 'package:clinica_clone/doctor_pages/speciality.dart';
import 'package:clinica_clone/patient_pages/medical_record_model.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

List<String> years = <String>[
  '2023',
  '2022',
  '2021',
  '2020',
  '2019',
  '2018',
  '2017',
  '2016',
  '2015',
  '2014',
  '2013',
  '2012',
  '2011',
  '2010',
  '2009',
  '2008',
  '2007',
  '2006',
  '2005',
  '2004',
  '2003',
  '2002',
  '2001',
  '2000',
  '1999',
  '1998',
  '1997',
  '1996',
  '1995',
  '1994',
  '1993',
  '1992',
  '1991',
  '1990',
  '1989',
  '1988',
  '1987',
  '1986',
  '1985',
  '1984',
  '1983',
  '1982',
  '1981',
  '1980',
  '1979',
  '1978',
  '1977',
  '1976',
  '1975',
  '1974',
  '1973',
  '1972',
  '1971',
  '1970',
  '1969',
  '1968',
  '1967',
  '1966',
  '1965',
  '1964',
  '1963',
  '1962',
  '1961',
  '1960',
  '1959',
  '1958',
  '1957',
  '1956',
  '1955',
  '1954',
  '1953',
  '1952',
  '1951',
  '1950',
  '1949',
  '1948',
  '1947',
  '1946',
  '1945',
  '1944',
  '1943',
  '1942',
  '1941',
  '1940',
  '1939',
  '1938',
  '1937',
  '1936',
  '1935',
  '1934',
  '1933',
  '1932',
  '1931',
  '1930',
  '1929',
  '1928',
  '1927',
  '1926',
  '1925',
  '1924',
  '1923',
  '1922',
  '1921',
  '1920',
  '1919',
  '1918',
  '1917',
  '1916',
  '1915',
  '1914',
  '1913',
  '1912',
  '1911',
  '1910',
  '1909',
  '1908',
  '1907',
  '1906',
  '1905',
  '1904',
  '1903',
  '1902',
  '1901',
  '1900',
];

List<String> nrcNo = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
  '11',
  '12',
  '13',
  '14'
];
List<String> nrcTown = ['MaGaDa', "KaMaYa", "UKaMa", "LaMaNa", "NaPaTa"];

List<String> nrcType = ['N', 'V'];

class DoctorSignUpPage extends StatefulWidget {
  const DoctorSignUpPage({super.key});

  @override
  State<DoctorSignUpPage> createState() => _DoctorSignUpPageState();
}

class _DoctorSignUpPageState extends State<DoctorSignUpPage> {
  final _doctorName = TextEditingController();
  final _doctorEmail = TextEditingController();
  final _doctorAge = TextEditingController();
  final _doctorPhone = TextEditingController();

  String dropDownValue = years.first;
  String dropDownValue1 = nrcNo.first;
  String dropDownValue2 = nrcTown.first;
  String dropDownValue3 = nrcType.first;
  bool checkbox1 = false;
  bool checkbox2 = false;

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
        child: Opacity(opacity: 0.7,child: Image.asset('assets/images/doctor.jpg', fit: BoxFit.cover)),
    )
            ,Container(

              margin:
              const EdgeInsets.only(left: 40, right: 40, top: 20),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.9,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
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

                            },
                            child: const Icon(
                              Icons.arrow_back_ios_new_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                            width: 250,
                            child: Text(
                              'Clinica',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 34, 203, 170)),
                              textAlign: TextAlign.center,
                            )),
                        const Padding(
                          padding: EdgeInsets.only(top: 35, bottom: 15),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            width: 400,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(Radius.circular(25)),
                                border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                controller: _doctorName,
                                decoration: const InputDecoration(hintText: 'Name', hintStyle: TextStyle(color: Colors.white),),
                                style: const TextStyle(color: Colors.white),

                              ),
                            )),
                        Container(
                            width: 400,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(Radius.circular(25)),
                                border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("NRC:", style: TextStyle(color: Colors.white),),
                                  DropdownButton<String>(
                                    value: dropDownValue1,
                                    icon: const Icon(Icons.arrow_drop_down, color: Colors.white,),
                                    elevation: 16,
                                    style: const TextStyle(color: Colors.white),

                                    onChanged: (String? value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropDownValue1 = value!;
                                      });
                                    },
                                    items: nrcNo
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                  DropdownButton<String>(
                                    value: dropDownValue2,
                                    icon: const Icon(Icons.arrow_drop_down, color: Colors.white,),
                                    elevation: 16,
                                    style: const TextStyle(color: Colors.white),

                                    onChanged: (String? value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropDownValue2 = value!;
                                      });
                                    },
                                    items: nrcTown
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                  DropdownButton<String>(
                                    value: dropDownValue3,
                                    icon: const Icon(Icons.arrow_drop_down, color: Colors.white,),
                                    elevation: 16,
                                    style: const TextStyle(color: Colors.white),

                                    onChanged: (String? value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropDownValue3 = value!;
                                      });
                                    },
                                    items: nrcType
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),
                            )),
                        Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            width: 400,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(Radius.circular(25)),
                                border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid)),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(

                                decoration: InputDecoration(hintText: 'NRC Number', hintStyle: TextStyle(color: Colors.white),),
                                style: TextStyle(color: Colors.white),

                              ),
                            )),
                        Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            width: 400,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(Radius.circular(25)),
                                border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid)),
                            child:  Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(

                                decoration: const  InputDecoration(hintText: 'Medical ID', hintStyle: TextStyle(color: Colors.white),),
                                style: const TextStyle(color: Colors.white),

                              ),
                            )),
                        Container(

                            width: 400,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(Radius.circular(25)),
                                border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid)),
                            child:  Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                controller: _doctorEmail,
                                decoration: const  InputDecoration(hintText: 'Email', hintStyle: TextStyle(color: Colors.white),),
                                style: const TextStyle(color: Colors.white),

                              ),
                            )),
                        Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            width: 400,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(Radius.circular(25)),
                                border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid)),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(

                                decoration: InputDecoration(hintText: 'New Passowrd', hintStyle: TextStyle(color: Colors.white),),
                                style: TextStyle(color: Colors.white),

                              ),
                            )),
                        Container(

                            width: 400,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(Radius.circular(25)),
                                border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid)),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(

                                decoration:  InputDecoration(hintText: 'Confirm Password', hintStyle: TextStyle(color: Colors.white),),
                                style: TextStyle(color: Colors.white),

                              ),
                            )),
                        Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            width: 400,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(Radius.circular(25)),
                                border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                controller: _doctorPhone,
                                decoration: const InputDecoration(hintText: 'Phone Number', hintStyle: TextStyle(color: Colors.white),),
                                style: const TextStyle(color: Colors.white),

                              ),
                            )),
                        Container(
                            width: 400,
                            height: 55,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid),
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(Radius.circular(25))),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Sex:', style: TextStyle(color: Colors.white),),
                                    const Text('Male', style: TextStyle(color: Colors.white)),
                                    Checkbox(
                                      side: const BorderSide(color: Colors.white),
                                      value: checkbox1,
                                      onChanged: (value) {
                                        setState(() {
                                          checkbox1 = value!;
                                        });
                                      },
                                    ),
                                    const Text('Female', style: TextStyle(color: Colors.white)),
                                    Checkbox(
                                      side: const BorderSide(color: Colors.white),
                                      value: checkbox2,
                                      onChanged: (value) {
                                        setState(() {
                                          checkbox2 = value!;
                                        });
                                      },
                                    ),
                                  ],
                                )
                            )),
                        Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            width: 400,
                            height: 55,
                            decoration:  BoxDecoration(
                                border: Border.all(color: Colors.white, width: 2, style: BorderStyle.solid),
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(Radius.circular(25))),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    const Text("Date of Birth: ", style: TextStyle(color: Colors.white),),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.1,
                                    ),
                                    DropdownButton<String>(
                                      value: dropDownValue,
                                      icon: const Icon(Icons.arrow_drop_down, color: Colors.white,),
                                      elevation: 16,
                                      style: const TextStyle(color: Colors.white),
                                      onChanged: (String? value) {
                                        // This is called when the user selects an item.
                                        setState(() {
                                          dropDownValue = value!;
                                        });
                                      },
                                      items: years
                                          .map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    )
                                  ],
                                ))),
                        ElevatedButton(onPressed: () {

                          final showDoctorInfo  = context.read<PickedDate>();
                          showDoctorInfo.showDoctorInfo(_doctorName.text, _doctorEmail.text, dropDownValue, _doctorPhone.text);
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ScanHospital(),
                              ));
                        }, child: Text("Sign Up")),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Speciality(),));
                          }, child: const Text('Choose speciality ->', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ),)),
                        )
                      ],
                    )),
              ),
            ),]
        ),
      )
    ),);
  }
}
