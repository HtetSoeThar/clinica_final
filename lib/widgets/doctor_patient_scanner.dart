
import 'package:clinica_clone/doctor_pages/view_patient_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';


class PatientQRScanner extends StatefulWidget {
  const PatientQRScanner({super.key});

  @override
  State<PatientQRScanner> createState() => _PatientQRScannerState();
}

class _PatientQRScannerState extends State<PatientQRScanner> {

  final GlobalKey qrKey = GlobalKey(debugLabel: "QR");
  QRViewController? controller;
  String result = '';

  _onQRViewCreated (QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData.code!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Scan QR for Patient', style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back, color: Colors.black,),)
          ],
        ),
        body: Column(
          children: [
            Expanded(
                flex: 5,
                child: QRView(
                  key: qrKey,
                  onQRViewCreated: _onQRViewCreated,
                  overlay: QrScannerOverlayShape(
                      cutOutSize: MediaQuery.of(context).size.width*0.8,
                      borderRadius: 15,
                      borderLength: 20,
                      borderWidth: 10,
                      borderColor: Colors.cyanAccent
                  ),
                )),
            Expanded(flex: 1,
                child: Center(
                  child: Text("Scan Result: $result", style: const TextStyle(fontSize: 18),),
                )),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                    if(result.isNotEmpty) {
                      Clipboard.setData(ClipboardData(text: result));
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Copied to Cpliboard")));
                    }
                  }, child: const Text("Copy")),
                  ElevatedButton(onPressed: ()  {
                    Navigator.pop(context);

                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PatientInfoPage(),));

                  }, child: const Text("Open"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
