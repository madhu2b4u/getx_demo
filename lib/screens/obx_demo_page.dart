import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ObxDemoPage extends StatelessWidget {
  ObxDemoPage({Key? key}) : super(key: key);

  var enteredValue = 'Makz'.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Obx Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                enteredValue.value = value;
              },
            ),
            const SizedBox(height: 16),
            Obx(
              () => Center(
                child: Text(
                  enteredValue.value,
                  textAlign: TextAlign.center,
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
