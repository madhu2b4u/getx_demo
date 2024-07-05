import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_demo/network/data/model/post_model.dart';
import 'package:getx_demo/network/post_provider.dart';

class PostController extends GetxController with StateMixin<List<PostModel>> {
  final PostProvider postProvider;

  PostController({required this.postProvider});

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }

  void fetchPosts() {
    postProvider.getPosts().then((response) {
      debugPrint('URL:${response.request?.url}');
      debugPrint('bodyString:${response.bodyString}');
      List<PostModel>? data = postModelFromJson(response.bodyString ?? '');
      change(data, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }
}