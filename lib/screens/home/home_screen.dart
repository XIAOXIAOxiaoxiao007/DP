import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/banner_carousel.dart';
import '../../widgets/search_form.dart';
import '../../widgets/categories.dart';
import '../../widgets/section_title.dart';
import '../../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          title: const Text('ShopLite'),
          centerTitle: true,
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
            child: SearchForm(
              onSubmitted: (q) {
                if (q.trim().isEmpty) return;
                context.push('/search?q=${Uri.encodeComponent(q.trim())}');
              },
              onFilter: () {
                context.push('/search?filters=1');
              },
            ),
          ),
        ),
        SliverToBoxAdapter(child: Padding(padding: const EdgeInsets.all(16), child: const BannerCarousel())),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Categories(
              onSelected: (c) => context.push('/search?q=${Uri.encodeComponent(c)}'),
            ),
          ),
        ),
        SliverToBoxAdapter(child: const SectionTitle(title: '为你推荐')), 
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          sliver: SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 0.72,
            ),
            itemBuilder: (context, index) {
              return ProductCard(onTap: () => context.push('/product/$index'));
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}



