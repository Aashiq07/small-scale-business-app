import 'package:flutter/material.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  List<SalesData> salesData = [
    SalesData(
        month: 'Jan',
        productsSold: 150,
        category: 'Fertilizers',
        amountGained: 5000),
    SalesData(
        month: 'Feb',
        productsSold: 200,
        category: 'Pottery',
        amountGained: 7000),
    SalesData(
        month: 'Mar',
        productsSold: 180,
        category: 'Clothes',
        amountGained: 6000),
    SalesData(
        month: 'Apr', productsSold: 220, category: 'Seeds', amountGained: 8000),
    SalesData(
        month: 'May',
        productsSold: 250,
        category: 'Vegetables',
        amountGained: 9000),
    SalesData(
        month: 'Jun',
        productsSold: 280,
        category: 'Fertilizers',
        amountGained: 10000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sales Analytics'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Products Sold Over Time',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: salesData.length,
                itemBuilder: (context, index) {
                  final data = salesData[index];
                  return ListTile(
                    title: Text(data.month),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Products Sold: ${data.productsSold}'),
                        Text('Most Sold Category: ${data.category}'),
                        Text('Max Amount Gained: ${data.amountGained}'),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SalesData {
  final String month;
  final int productsSold;
  final String category;
  final int amountGained;

  SalesData(
      {required this.month,
      required this.productsSold,
      required this.category,
      required this.amountGained});
}
