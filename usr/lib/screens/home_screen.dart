import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('برنامج الحسابات والمخازن والإنتاج'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: <Widget>[
          _buildModuleCard(context, 'إدارة المخازن', Icons.store_mall_directory, () {
            // TODO: Navigate to Inventory Management Screen
          }),
          _buildModuleCard(context, 'إدارة المشتريات', Icons.shopping_cart, () {
            // TODO: Navigate to Purchases Management Screen
          }),
          _buildModuleCard(context, 'الإدارة المالية', Icons.account_balance_wallet, () {
            // TODO: Navigate to Financial Management Screen
          }),
          _buildModuleCard(context, 'إدارة الإنتاج', Icons.precision_manufacturing, () {
            // TODO: Navigate to Production Management Screen
          }),
          _buildModuleCard(context, 'إدارة المستخدمين', Icons.people, () {
            // TODO: Navigate to User Management Screen
          }),
          _buildModuleCard(context, 'التقارير الإدارية', Icons.bar_chart, () {
            // TODO: Navigate to Admin Reports Screen
          }),
        ],
      ),
    );
  }

  Widget _buildModuleCard(BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 50.0, color: Theme.of(context).primaryColor),
            const SizedBox(height: 16.0),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
