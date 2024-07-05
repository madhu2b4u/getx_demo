import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/binding/post_controller.dart';
import 'package:getx_demo/screens/post_detail_page.dart';

class PostsPage extends GetView<PostController> {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: Container(
        color: Colors.grey.shade50,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: controller.obx(
          (posts) {
            return ListView.builder(
            itemCount: posts?.length ?? 0,
            itemBuilder: (context, index) {
              final post = posts?[index];
              return GestureDetector(
                onTap: () {
                  if (post != null) {
                    Get.to(PostDetailPage(post: post));
                  }
                },
                child: Card(
                  child: ListTile(
                    leading: const FlutterLogo(),
                    title: Text(post?.title ?? 'No Title Found'),
                    subtitle: Text(
                      post?.body ?? '',
                      maxLines: 2,
                      softWrap: true,
                    ),
                  ),
                ),
              );
            },
          );
          },
          onLoading: const Center(child: CircularProgressIndicator()),
          onError: (error) => Center(
            child: Text(
              'Error: $error',
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
