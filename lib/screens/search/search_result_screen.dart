import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/product_card.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key, required this.query});

  final String query;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(query.isEmpty ? '搜索结果' : '“$query”的搜索结果'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.72,
        ),
        itemCount: 10,
        itemBuilder: (context, index) => ProductCard(
          onTap: () => context.push('/product/$index'),
        ),
      ),
    );
  }
}


