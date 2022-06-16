import 'package:flutter/material.dart';
import 'package:smart_gardening_app/routes/routes_generator.dart';

import 'screens/home/home_screen.dart'; //TODO: package:smart_gardening_app/home/home_screen.dart
import 'screens/splash/splash_screen.dart'; //TODO: package:smart_gardening_app/splash/splash_screen.dart

//TODO: flutter run --release per lanciare in release mode
//TODO: card class

//TODO: WidgetsFlutterBinding.ensureInitialized();

void main() => runApp(const App()); //TODO: const MaterialApp();

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // per rimuovere il debug tag
      title: 'Smart Gardening App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      initialRoute: '/splash',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}