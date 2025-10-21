import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('结算')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.location_on_outlined),
              title: const Text('收货地址'),
              subtitle: const Text('请选择/编辑收货地址'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.of(context).pushNamed('/address'),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: Column(
              children: const [
                ListTile(title: Text('商品1'), trailing: Text('￥99.00')),
                Divider(height: 1),
                ListTile(title: Text('商品2'), trailing: Text('￥49.00')),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: Column(
              children: const [
                ListTile(title: Text('商品金额'), trailing: Text('￥148.00')),
                Divider(height: 1),
                ListTile(title: Text('运费'), trailing: Text('￥0.00')),
                Divider(height: 1),
                ListTile(title: Text('应付金额'), trailing: Text('￥148.00')),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 14),
              child: Text('提交订单'),
            ),
          ),
        ),
      ),
    );
  }
}


