import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('商品详情')),
      body: Column(
        children: [
          // Top product imagery (placeholder)
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              color: const Color(0xFFF1F5F9),
              child: const Center(
                child: Icon(Icons.image, size: 80, color: Color(0xFF94A3B8)),
              ),
            ),
          ),
          const SizedBox(height: 12),
          // Details container with rounded top corners (template-like)
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: ListView(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '示例商品名称 #$id',
                          style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        '￥199.00',
                        style: theme.textTheme.titleLarge?.copyWith(color: Colors.red, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '这里是商品简介的占位文本，用于演示详情页布局。支持多行文本，体现模板的排版与间距风格。',
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16),
                  Text('颜色', style: theme.textTheme.titleSmall),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      _ColorDot(color: Color(0xFFBEE8EA), selected: false),
                      SizedBox(width: 8),
                      _ColorDot(color: Color(0xFF141B4A), selected: true),
                      SizedBox(width: 8),
                      _ColorDot(color: Color(0xFFF4E5C3), selected: false),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text('规格', style: theme.textTheme.titleSmall),
                  const SizedBox(height: 8),
                  Wrap(spacing: 8, children: const [
                    _Chip(text: '标准'),
                    _Chip(text: '豪华'),
                    _Chip(text: '旗舰'),
                  ]),
                  const SizedBox(height: 24),
                  Text('详情', style: theme.textTheme.titleSmall),
                  const SizedBox(height: 8),
                  Text(
                    '更多详细说明可放在这里，如材质说明、尺寸参数、售后政策等。',
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Text('加入购物车'),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Text('立即购买'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ColorDot extends StatelessWidget {
  const _ColorDot({required this.color, this.selected = false});
  final Color color;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: selected ? 22 : 18,
      height: selected ? 22 : 18,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(
          color: selected ? Theme.of(context).colorScheme.primary : const Color(0xFFE2E8F0),
          width: selected ? 2 : 1,
        ),
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(text),
      side: const BorderSide(color: Color(0xFFE2E8F0)),
      backgroundColor: Colors.white,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: const EdgeInsets.symmetric(horizontal: 8),
    );
  }
}

