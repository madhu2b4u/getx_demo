import 'package:get/get.dart';
import 'package:getx_demo/network/base_get_connect.dart';

class PostProvider extends BaseGetConnect {
  Future<Response<dynamic>> getPosts() =>
      get<dynamic>('/posts');

  Future<Response<dynamic>> createPost(Map data) =>
      post<dynamic>('/posts', data);

}
