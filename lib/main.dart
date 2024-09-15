import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

void main() => runApp(const MainApp());
class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vimm\'s Lair App',
       initialRoute: AppRoutes.initialRoute, 
      routes: AppRoutes.getRoutes(), 
      onGenerateRoute: AppRoutes.onGenerateRoute, 
    );
  }
}
