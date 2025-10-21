import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, this.onSelected});

  final ValueChanged<String>? onSelected;

  static const List<String> _categories = [
    '推荐', '手机', '电脑', '家电', '服饰', '美妆', '食品'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return ChoiceChip(
            label: Text(_categories[i]),
            selected: false,
            onSelected: (_) => onSelected?.call(_categories[i]),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemCount: _categories.length,
      ),
    );
  }
}


