import 'package:flutter_application_11/models/user_models.dart';
import 'package:flutter_application_11/routes/route_names.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  List<UserModel> getUserData() => UserModel.data;

  void handleListTap(String namaList) {
    Get.toNamed(
      RouteNames.hitung,
      arguments: {
        'name': namaList,
      }
    );
  }

  void goToInputPage() {
    Get.toNamed(
      RouteNames.input,
    );
  }


  @override
  void onInit() {
    super.onInit();
    print('Page Ditampilkan');
  }

  // @override
  // void onInit() {
  //   super.onInit();
  //   print('Page Ditampilkan');
  // }


}
