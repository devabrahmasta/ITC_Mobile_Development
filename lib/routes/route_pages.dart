import 'package:flutter_application_11/routes/route_names.dart';
import 'package:flutter_application_11/views/detail_view.dart';
import 'package:flutter_application_11/views/home_views.dart';
import 'package:flutter_application_11/views/input_view.dart';
import 'package:get/get.dart';

class RoutePages {
  static List<GetPage> pages = [
    GetPage(// gunanya untuk mengarahkan ke suatu page
      name: RouteNames.home, // labelnya
      page: () => HomeViews(),
    ),  
    GetPage(
      name: RouteNames.hitung, 
      page: () => DetailView()
    ),
    GetPage(name: RouteNames.input, 
      page: () => InputView()
    ),
  ];
}