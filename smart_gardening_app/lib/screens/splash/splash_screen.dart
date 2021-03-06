import 'package:flutter/material.dart';
import 'package:smart_gardening_app/screens/pages.dart';
import 'package:smart_gardening_app/utils/utils.dart';

import '../../constants/strings_constants.dart';
import '../home/home_screen.dart';

//TODO: rename class in SplashScreen?

//TODO: add a gradient.
//TODO: add animation effect.
//TODO: Add some plants

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  static String routeName = "/splash";

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1800), () {});
    Utils.navigateToPage(context: context, page: Pages.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.topRight,
          padding: const EdgeInsets.only(top: 60.0, right: 30.0),
          child: Text(
            kAppName,
            style: TextStyle(
              fontSize: 36,
              //fontFamily: 'RailWay'
              )
            )
        ),
      )
    );
  }
}