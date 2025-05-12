// import 'dart:math';
// import 'dart:developer';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class InputController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController imageUrlController = TextEditingController();
  String name = '';
  String imageUrl = '';

  void inputData() {
    if (nameController.text.isEmpty || imageUrlController.text.isEmpty) {
      Get.snackbar(
        "ERROR",
        "Data tidak boleh kosong",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }
    name = nameController.text;
    imageUrl = imageUrlController.text;
    print("Nama: $name");
    print("Image URL: $imageUrl");

    String baseUrl = "https://itc-meet2-default-rtdb.firebaseio.com/";
    Uri uri = Uri.parse('$baseUrl/User.json');

    Map<String, dynamic> inputData = {
      "nama": name,
      "imgUrl": imageUrl,
    };

    http
        .post(
      uri,
      body: json.encode(inputData),
    )
        .then((response) {
      if (response.statusCode == 200) {
        Get.snackbar(
          "Input Berhasil",
          "Data berhasil ditambahkan",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        nameController.clear();
        imageUrlController.clear();
        Get.back();
      }
    });


  }

  @override
  void onInit() {
    super.onInit();
    print('Page Ditampilkan');
  }
}
