import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.onTap,
    this.title,
    this.price,
    this.rating,
    this.reviewCount,
    this.isFavorite = false,
  });

  final VoidCallback onTap;
  final String? title;
  final String? price; // 建议传入格式化后的价格字符串，如："￥1,299.00"
  final double? rating;
  final String? reviewCount; // 如："2.1k"
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    final displayTitle = title ?? 'Apple AirPods Pro 2';
    final displayPrice = price ?? '￥1,299.00';
    final displayRating = rating ?? 4.8;
    final displayReviews = reviewCount ?? '2.1k';

    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    color: const Color(0xFFF1F5F9),
                    child: const Icon(Icons.image, size: 48, color: Color(0xFF94A3B8)),
                  ),
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [BoxShadow(color: Color(0x1A000000), blurRadius: 6)],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        size: 18,
                        color: isFavorite ? Colors.red : null,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    displayTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Color(0xFFF59E0B), size: 16),
                      const SizedBox(width: 4),
                      Text('${displayRating.toStringAsFixed(1)} ($displayReviews)'),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    displayPrice,
                    style: const TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


