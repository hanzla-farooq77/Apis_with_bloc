import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todo_app_bloc/model/post_model.dart';

class PostRepository {
  Future<List<PostModel>> fetchPosts() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/comments'),
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body) as List;

      return body.map((e) {
        return PostModel(
          postId: e['postId'] as int,
          name: e['name'] as String,
          body: e['body'] as String,
        );
      }).toList();
    }

    throw Exception('Failed to fetch posts');
  }
}
