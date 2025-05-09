import 'package:http/http.dart' as http;
import 'data_model.dart';
import 'dart:convert';

class ApiService {
  Future<List<Post>> fetchPosts() async {
    String url = 'https://jsonplaceholder.typicode.com/users';

    final parsedUrl = Uri.parse(url);
    final response = await http.get(parsedUrl);
    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((jsonMap) => Post.fromJson(jsonMap)).toList();
    } else {
      throw Exception('Failed to load posts ${response.statusCode}');
    }
  }
}
