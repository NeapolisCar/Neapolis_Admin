import 'package:flutter/material.dart';
import 'package:neapolic_admin/ListVoiture.dart';
import 'package:neapolic_admin/ListdeDemande.dart';
import 'package:neapolic_admin/login.dart';
import 'TrakingVoiture.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // cameras = await availableCameras();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // initialRoute: '/',
    routes: {
      '/': (context) => Login(),
      '/TrakingVoiture': (context) => TrakingVoiture(),
      '/ListdeVoiture': (context) => ListVoiture(),
      '/ListdeDemande':(context)=> ListdeDemande(),
    },
  ));
}
