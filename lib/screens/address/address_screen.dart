import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('收货地址')),
      body: ListView(
        children: [
          Card(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('张三 188****0000'),
              subtitle: const Text('上海市 浦东新区 示例路 123 号'),
              trailing: const Icon(Icons.edit_outlined),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('新增地址'),
            ),
          ),
        ],
      ),
    );
  }
}


