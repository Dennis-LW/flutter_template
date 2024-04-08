import 'package:flutter/material.dart';

import '../model/post.dart';

class ListViewTemplate extends StatelessWidget {
  const ListViewTemplate({super.key});
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Image.network(posts[index].imageUrl),
          const SizedBox(height: 16,),
          Text(posts[index].title,style: Theme.of(context).textTheme.titleMedium,),
          Text(posts[index].author,style: Theme.of(context).textTheme.bodyMedium,),
          const SizedBox(height: 16,),
        ]
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}