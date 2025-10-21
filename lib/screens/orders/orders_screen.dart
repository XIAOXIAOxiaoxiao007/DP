import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('我的订单')),
      body: ListView.separated(
        itemCount: 8,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, i) {
          return ListTile(
            leading: const Icon(Icons.receipt_long),
            title: Text('订单 #${1000 + i}'),
            subtitle: const Text('已发货 · ￥199.00'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.push('/orders/${1000 + i}'),
          );
        },
      ),
    );
  }
}

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('订单详情 #$id')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(title: Text('状态'), trailing: Text('已发货')),
          Divider(height: 1),
          ListTile(title: Text('金额'), trailing: Text('￥199.00')),
          Divider(height: 1),
          ListTile(title: Text('收货人'), trailing: Text('张三 188****0000')),
          Divider(height: 1),
          ListTile(title: Text('地址'), trailing: Text('上海市 浦东新区 示例路 123 号')),
        ],
      ),
    );
  }
}


