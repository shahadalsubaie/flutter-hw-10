import 'package:flutter/material.dart';

import 'Models/Data.dart';

class Added extends StatelessWidget {
  const Added({super.key, required this.post});
  final Blog post;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Bolg',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.indigo),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text('Image URL'),
          const TextField(
            autofocus: true,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text('Name of the Blog '),
          const TextField(
            autofocus: true,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text('Details'),
          const TextField(),
          const SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {
              Data.posts.add(post);
            },
            style: TextButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.indigo),
            child: const Text('Add'),
          )
        ],
      ),
    );
  }
}
