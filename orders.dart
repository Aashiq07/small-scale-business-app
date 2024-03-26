import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Orders'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          children: const [
            OrderCard(
              imageAsset: 'images/person.jpg',
              productName: 'Fertilizers',
              productPrice: 15.99,
              quantity: 2,
              customerName: 'Hemanth',
              customerAddress: '123 Main St, Redhills',
            ),
            OrderCard(
              imageAsset: 'images/beauty-1.jpg',
              productName: 'Seeds',
              productPrice: 8.49,
              quantity: 3,
              customerName: 'Aashiq',
              customerAddress: '456 Oak Ave, Anna Nagar',
            ),
            OrderCard(
              imageAsset: 'images/clothes.jpg',
              productName: 'Clothes',
              productPrice: 25.99,
              quantity: 1,
              customerName: 'Magesh',
              customerAddress: '789 Elm St, Villivakam',
            ),
            OrderCard(
              imageAsset: 'images/perfume.jpg',
              productName: 'Perfume',
              productPrice: 35.99,
              quantity: 1,
              customerName: 'Harshan',
              customerAddress: '987 Pine St, Kolathur',
            ),
          ],
        ),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final String imageAsset;
  final String productName;
  final double productPrice;
  final int quantity;
  final String customerName;
  final String customerAddress;

  const OrderCard({
    super.key,
    required this.imageAsset,
    required this.productName,
    required this.productPrice,
    required this.quantity,
    required this.customerName,
    required this.customerAddress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            Image.asset(
              imageAsset,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Text(
              'Product: $productName',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              'Price: \$$productPrice',
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 4),
            Text(
              'Quantity: $quantity',
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 4),
            Text(
              'Customer: $customerName',
              style: const TextStyle(fontSize: 14),
            ),
            Text(
              'Address: $customerAddress',
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
