
import 'package:clinica_clone/widgets/doctor_patient_scanner.dart';
import 'package:clinica_clone/widgets/doctor_scanner.dart';
import 'package:flutter/material.dart';

class ScanPatient extends StatefulWidget {
  const ScanPatient({super.key});

  @override
  State<ScanPatient> createState() => _ScanPatientState();
}

class _ScanPatientState extends State<ScanPatient> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.76,
                child: Opacity(opacity: 0.4,child: Image.asset('assets/images/medical.jpg', fit: BoxFit.cover)),
              ),
              Center(
                child: ElevatedButton(child: const Text(
                    'Scan for Patient'
                ), onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PatientQRScanner()));
                },  ),
              ),]
        ),
      ),
    );
  }
}
