import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_11/controllers/input_controller.dart';

class InputView extends StatelessWidget {
  InputView({super.key});
  InputController controller = Get.put(InputController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Data'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8,
            children: [
              TextField(
                controller: controller.nameController,
                decoration: InputDecoration(label: Text("Nama")),
              ),
              TextField(
                controller: controller.imageUrlController,
                decoration: const InputDecoration(label: Text("Link Gambar")),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.inputData();
                },
                child: const Text("Insert Data"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
