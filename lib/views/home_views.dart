import 'package:flutter/material.dart';
import 'package:flutter_application_11/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeViews extends StatelessWidget {
  HomeViews({super.key});

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller
                .goToInputPage(); //   Get.toNamed(RouteNames.input); klo getOfNamed itu dia gabisa balik lagi ke halaman sebelumnya.
          },
          child: const Icon(Icons.add),
        ),
        body: SafeArea(
            child: Center(
          child: ListView(
            shrinkWrap: true, // ga bakal ngambil full satu kotak.
            children: List.generate(controller.getUserData().length, (i) {
              return GestureDetector(
                onTap: () {
                  controller.handleListTap(controller.getUserData()[i].nama);
                },
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        controller.getUserData()[i].imgUrl,
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Text(controller.getUserData()[i].nama),
                  ],
                ),
              );
            }),
          ),
        )));
  }
}
