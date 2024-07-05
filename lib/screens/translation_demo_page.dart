import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/localization/translation_keys.dart' as translation;

class TranslationDemoPage extends StatelessWidget {
  final String? value;
  const TranslationDemoPage({Key? key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GetXDemo')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
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
          Center(
            child: Text(
              translation.logged_in.trParams({
                'name': value ?? 'makz',
                'email': 'makz@xyz.com'
              }),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24.0,
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
