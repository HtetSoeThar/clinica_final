import 'package:clinica_clone/patient_pages/medical_record_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PatientQRCode extends StatefulWidget {
  const PatientQRCode({super.key});

  @override
  State<PatientQRCode> createState() => _PatientQRCodeState();
}

class _PatientQRCodeState extends State<PatientQRCode> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PickedDate>(builder: (context, value, child) => SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text('Scan QR for Hospital', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back, color: Colors.black,),)
        ],
      ),
      body: Center(
        child: QrImageView(
          data: value.patientName,
          version: QrVersions.auto,
          size: 300.0,
        ),
      ),
    )),);
  }
}
