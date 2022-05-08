import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:q_savings_app/routes/routes.dart';
import 'package:q_savings_app/screens/my_home_page/view.dart';
import 'package:q_savings_app/themes/dark_theme.dart';

import 'screens/my_home_page/binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MyHomePageBinding(),
      initialRoute: RoutesClass.getHomeRoute(),
      getPages: RoutesClass().routes,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darkTheme,
      home: const SafeArea(
        child: MyHomePage(),
      ),
    );
  }
}
