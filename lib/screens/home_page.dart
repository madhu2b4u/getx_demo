import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/localization/translation_keys.dart' as translation;
import 'package:getx_demo/screens/send_data_page.dart';
import 'package:getx_demo/screens/translation_demo_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GetXDemo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                translation.title.tr,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.to(const TranslationDemoPage(value: 'Nishal',));
              },
              child: const Text('Show translation demo using GetX'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  snackPosition: SnackPosition.BOTTOM,
                  'Snackbar Title',
                  "Display the message here",
                  colorText: Colors.white,
                  backgroundColor: Colors.lightBlue,
                  icon: const Icon(Icons.add_alert),
                );
              },
              child: const Text('Show Getx Snackbar'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              },
              child: const Text('Change Theme using GetX'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Get.to(ObxDemoPage());
                Get.toNamed('/obxDemoPage');
              },
              child: const Text('Observable Demo using Obx'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: 'Title',
                    content: const Text('Sample alert dialog content'),
                    textCancel: 'OK',
                    onCancel: () => Get.back());
              },
              child: const Text('Alert dialog using GetX'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Get.to(SendDataPage()),
              child: const Text('Send Data between screens using GetX'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Get.toNamed('postsPage'),
              child: const Text('Get posts from remote server'),
            ),
          ],
        ),
      ),
    );
  }
}
