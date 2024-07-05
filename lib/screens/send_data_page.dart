import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendDataPage extends StatelessWidget {
  SendDataPage({Key? key}) : super(key: key);

  final idTextController = TextEditingController();
  final nameTextController = TextEditingController();

  var result = 'No result'.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Obx Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Enter ID'),
            TextField(
              controller: idTextController,
            ),
            const SizedBox(height: 16),
            const Text('Enter Name'),
            TextField(
              controller: nameTextController,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                // Get.to(ObxDemoPage());
                var data = await Get.toNamed(
                    '/showDataReceivedDataPage?id=${idTextController.text}&name=${nameTextController.text}');
                result.value = data;
              },
              child: const Text('Send Data to next screen'),
            ),
            Obx(
              () => Center(
                child: Text(
                  result.value,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
