import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('我的')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text('未登录用户'),
            subtitle: Text('点击登录，享受更多服务'),
            trailing: Icon(Icons.chevron_right),
          ),
          const SizedBox(height: 12),
          Card(
            child: Column(
              children: const [
                ListTile(leading: Icon(Icons.receipt_long), title: Text('我的订单'), trailing: Icon(Icons.chevron_right)),
                Divider(height: 1),
                ListTile(leading: Icon(Icons.location_on_outlined), title: Text('收货地址'), trailing: Icon(Icons.chevron_right)),
                Divider(height: 1),
                ListTile(leading: Icon(Icons.settings_outlined), title: Text('设置'), trailing: Icon(Icons.chevron_right)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


