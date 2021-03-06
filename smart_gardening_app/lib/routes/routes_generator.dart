import 'package:flutter/material.dart';
import 'package:smart_gardening_app/models/plant/plant.dart';
import 'package:smart_gardening_app/screens/error_screen/error_screen.dart';
import 'package:smart_gardening_app/screens/my_plants/my_plants_screen.dart';
import 'package:smart_gardening_app/screens/plant_details/plant_details.dart';
import 'package:smart_gardening_app/screens/scan_result_screen/scan_result_screen.dart';
import 'package:smart_gardening_app/screens/sensors/sensors_screen.dart';
import 'package:smart_gardening_app/screens/settings/settings_screen.dart';
import 'package:smart_gardening_app/screens/tasks/tasks_screen.dart';

import '../screens/diagnosis/diagnosis_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/scan/scan_screen.dart';
import '../screens/splash/splash_screen.dart';

//TODO: o chiamarli tutti screen o chiamarli tutti pages!

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/': 
      case '/home': //TODO: remove
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/splash': //TODO: settare lo splash screen come '/'?
        return MaterialPageRoute(builder: (_) => Splash());
      case '/myplants':
        return MaterialPageRoute(builder: (_) => MyPlantsScreen());
      case '/myplants/details':
        //return MaterialPageRoute(builder: (_) => PlantDetails(plant: args);
        if(args is Plant) {
          return MaterialPageRoute(
            builder: (_) => PlantDetails(plant: args)
          );
        }
        return _errorRoute();
      case '/tasks':
        return MaterialPageRoute(builder: (_) => TasksScreen());
      case '/diagnosis':
        return MaterialPageRoute(builder: (_) => DiagnosisScreen());
      case '/settings':
        return MaterialPageRoute(builder: (_) => SettingsScreen());
      case '/scan':
        return MaterialPageRoute(builder: (_) => ScanPage());
      case '/scan_result':
        if(args is Plant) {
          return MaterialPageRoute(
            builder: (_) => ScanResultScreen(plant: args) //TODO: ScanResultPage
          );
        }
        return _errorRoute();

      case '/diagnosis/scan/result':
        if(args is Plant) {
          //TODO: uncomment
          /*return MaterialPageRoute(
            builder: (_) => ScanResultScreen(plant: args) //TODO: DiagnosisScanResultPage
          );*/
        }
        return _errorRoute();
      case '/sensors':
        return MaterialPageRoute(builder: (_) => SensorPage());
      default:
        return _errorRoute();
    }
  }

  //TODO: da aggiornare
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      //return FlashErrorScreen(); //TODO: uncomment
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
