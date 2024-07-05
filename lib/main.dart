import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/binding/post_binding.dart';
import 'package:getx_demo/screens/obx_demo_page.dart';
import 'package:getx_demo/screens/posts_page.dart';
import 'package:getx_demo/screens/send_data_page.dart';
import 'package:getx_demo/screens/show_received_data_page.dart';
import 'package:getx_demo/screens/translation_demo_page.dart';
import 'package:getx_demo/screens/unknown_route_page.dart';

import 'screens/home_page.dart';
import 'localization/messages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'UK'),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      unknownRoute: GetPage(
        name: '/notfound',
        page: () => const UnknownRoutePage(),
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/obxDemoPage',
          page: () => ObxDemoPage(),
        ),
        GetPage(
          name: '/translationDemoPage',
          page: () => const TranslationDemoPage(),
        ),
        GetPage(
          name: '/showDataReceivedDataPage',
          page: () => const ShowDataReceivedDataPage(),
        ),
        GetPage(
          name: '/sendDataPage',
          page: () => SendDataPage(),
        ),
        GetPage(
          name: '/postsPage',
          page: () => const PostsPage(),
          binding: PostBinding(),
        ),
      ],
    );
  }
}
