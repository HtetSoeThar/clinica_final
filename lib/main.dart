
import 'package:clinica_clone/intro/intro_page.dart';
import 'package:clinica_clone/intro/page_view_indicator.dart';
import 'package:clinica_clone/patient_pages/medical_record_model.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => PickedDate(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageViewIndicator(),
    );
  }
}