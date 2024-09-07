import 'package:flutter/material.dart';
import 'package:foodapp/utils/constants/colors_constants.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          height: 200,
        ),
      ),
    );
  }
}
