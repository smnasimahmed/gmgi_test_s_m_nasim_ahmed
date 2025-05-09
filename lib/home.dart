import 'package:flutter/material.dart';
import 'package:test_exam_1/card.dart';
import 'data_model.dart';
import 'api_service.dart';

class Home extends StatelessWidget {
  Home({
    super.key,
  });

  final ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users from API'),
      ),
      body: FutureBuilder<List<Post>>(
        future: apiService.fetchPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No data found.'));
          } else {
            final posts = snapshot.data!;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return CardWidget(post: post);
              },
            );
          }
        },
      ),
    );
  }
}
