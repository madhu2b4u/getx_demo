import 'package:get/get.dart';
import 'package:getx_demo/binding/post_controller.dart';
import 'package:getx_demo/network/post_provider.dart';

class PostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostProvider());
    Get.put(PostController(postProvider: Get.find()));
  }
}