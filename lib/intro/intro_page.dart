import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
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
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                  
                    width: 150,
                    height: 150,
                    
child: Image.asset("assets/images/logo_pic.png" , fit: BoxFit.cover),
                  ),
                const Padding(
                   padding: EdgeInsets.symmetric(vertical: 15),
                   child: Text("CLINICA", style: TextStyle(fontSize: 30, color: Colors.white),),
                 ),
SizedBox(width: 500, height: 280, child: Lottie.network("https://lottie.host/79f4d385-7f98-4ecc-9323-4a0195eb311d/WN0IaISqN9.json", fit: BoxFit.fill)),
                  SizedBox(
                    width: 300.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 18.0,

                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText('Centralized and Standardized Patient Medical Record System', textAlign: TextAlign.center),
                        ],
                        onTap: () {

                        },
                      ),
                    ),
                  ),
                  Container(margin: const EdgeInsets.only(top: 120),width: 80, height: 80, child: Lottie.network("https://lottie.host/530d3366-c438-4819-82b5-e5cb426064f9/jigNMYrduv.json" , fit: BoxFit.fill),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
