import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:makeit/ui/views/home_view.dart';
import './service_locator.dart';

// void main() {
//   // Register all the models and services before the app starts

//   runApp(MyApp());
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skeleton Watcher',
      theme: ThemeData(
          primaryColor: Color.fromARGB(255, 9, 202, 172),
          backgroundColor: Color.fromARGB(255, 26, 27, 30),
          textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Open Sans',
              bodyColor: Colors.white,
              displayColor: Colors.white)),
      home: HomeView(),
    );
  }
}
