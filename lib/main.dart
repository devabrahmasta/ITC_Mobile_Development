import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_11/routes/route_names.dart';
import 'package:flutter_application_11/routes/route_pages.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: RoutePages.pages,
      initialRoute: RouteNames.home,
    );
  }
}
