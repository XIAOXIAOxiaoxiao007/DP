import 'package:flutter/material.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({super.key, this.onSubmitted, this.onFilter});

  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onFilter;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextField(
      textInputAction: TextInputAction.search,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        hintText: '搜索商品...',
        prefixIcon: const Icon(Icons.search),
        suffixIcon: IconButton(
          onPressed: onFilter,
          icon: const Icon(Icons.tune),
          tooltip: '筛选',
        ),
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.colorScheme.primary.withOpacity(0.24)),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      ),
    );
  }
}


