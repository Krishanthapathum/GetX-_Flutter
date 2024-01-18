import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_tutorial/helper/init_dependancy.dart';
import 'package:get_tutorial/my_home_Page.dart';
import 'package:get_tutorial/helper/init_controllers.dart' as di;

Future<void> main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: initDep(),
      home: const MyHomePage(),
    );
  }
}
