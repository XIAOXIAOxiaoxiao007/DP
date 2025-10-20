import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('商品详情')),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              color: const Color(0xFFF1F5F9),
              child: const Icon(Icons.image, size: 72, color: Color(0xFF94A3B8)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('示例商品名称', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                SizedBox(height: 8),
                Text('￥199.00', style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w700)),
                SizedBox(height: 12),
                Text('这里是商品简介的占位文本，用于演示详情页布局。'),
              ],
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


