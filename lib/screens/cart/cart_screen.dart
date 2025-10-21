import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('购物车')),
      body: const Center(
        child: Text('购物车为空，去挑选喜欢的商品吧～'),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: ElevatedButton(
            onPressed: () => context.push('/checkout'),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 14),
              child: Text('去结算'),
            ),
          ),
        ),
      ),
    );
  }
}


