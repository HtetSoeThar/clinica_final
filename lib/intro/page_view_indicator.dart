import 'package:clinica_clone/intro/intro_page.dart';
import 'package:clinica_clone/intro/user_auth_page.dart';
import 'package:flutter/material.dart';

class PageViewIndicator extends StatefulWidget {
  const PageViewIndicator({super.key});

  @override
  State<PageViewIndicator> createState() => _PageViewIndicatorState();
}

class _PageViewIndicatorState extends State<PageViewIndicator> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: const [
          IntroPage(),
          UserAuthPage()
        ],
      ),
    );
  }
}
