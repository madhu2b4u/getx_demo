import 'package:flutter/material.dart';

class CustomTileList extends StatelessWidget {
  final String title;
  final String? subTitle;
  const CustomTileList({Key? key, required this.title, this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const FlutterLogo(),
        title: Text(title),
        subtitle: Text(subTitle ?? ''),
      ),
    );
  }
}
