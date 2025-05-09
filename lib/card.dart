import 'package:flutter/material.dart';
import 'package:test_exam_1/data_model.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        title: Text(post.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email: ${post.email}"),
            Text("Company: ${post.compName}"),
          ],
        ),
      ),
    );
  }
}
