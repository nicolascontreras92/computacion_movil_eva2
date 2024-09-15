import 'package:flutter/material.dart';
import 'package:prueba2v1/widgets/widgets.dart';

class AppRoutes {
  static const initialRoute = '/inicio'; 
  static Map<String, Widget Function(BuildContext)> getRoutes() {
    return {
      '/inicio': (BuildContext context) => const InicioScreen(),
      '/foro': (BuildContext context) => const ForoScreen(),
      '/manuales': (BuildContext context) => const ManualesScreen(),
      '/boveda': (BuildContext context) => const BovedaScreen(),
    };
  }
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ErrorScreen());
  }
}
