import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/screens/home_page.dart';

class ShowDataReceivedDataPage extends StatelessWidget {
  const ShowDataReceivedDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Result Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Text(
              'ID: ${Get.parameters['id']}',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24.0,
              ),
            )),
            Center(
                child: Text(
              'Name: ${Get.parameters['name']}',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24.0,
              ),
            )),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Get.until((route) => false)
                Get.back(result: 'success');
              },
              child: const Text('Send Data to previous screen'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.offAll(const HomePage());
                // Get.offAllNamed("/");
              },
              child: const Text('Go back to Home Page'),
            ),

          ],
        ),
      ),
    );
  }
}
