import 'package:flutter/material.dart';
import 'package:getx_demo/network/data/model/post_model.dart';
import 'package:getx_demo/widgets/custom_tile_list.dart';

class PostDetailPage extends StatelessWidget {
  final PostModel? post;

  const PostDetailPage({Key? key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Post')),
      body: Container(
        color: Colors.grey.shade50,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: CustomTileList(
            title: post?.title ?? '',
            subTitle: post?.body ?? '',
          ),
        ),
      ),
    );
  }
}
