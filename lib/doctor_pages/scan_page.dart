
import 'package:clinica_clone/widgets/doctor_scanner.dart';
import 'package:flutter/material.dart';

class ScanHospital extends StatefulWidget {
  const ScanHospital({super.key});

  @override
  State<ScanHospital> createState() => _ScanHospitalState();
}

class _ScanHospitalState extends State<ScanHospital> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 1,
              child: Opacity(opacity: 0.7,child: Image.asset('assets/images/medical.jpg', fit: BoxFit.cover)),
            ),
            Center(
            child: ElevatedButton(child: const Text(
                'Scan for Hospital'
            ), onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) => const QRScanner(),));
            },  ),
          ),]
        ),
      ),
    );
  }
}
