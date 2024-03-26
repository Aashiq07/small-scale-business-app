import 'package:flutter/material.dart';
import 'package:login/Pages/add_product.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Products'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Your Products',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: const [
                  ProductCard(
                    imageAsset: 'images/tech.jpg',
                    productName: 'Product 1',
                    productPrice: 10.99,
                  ),
                  ProductCard(
                    imageAsset: 'images/watch.jpg',
                    productName: 'Product 2',
                    productPrice: 19.99,
                  ),
                  ProductCard(
                    imageAsset: 'images/glass.jpg',
                    productName: 'Product 3',
                    productPrice: 15.49,
                  ),
                  ProductCard(
                    imageAsset: 'images/beauty.jpg',
                    productName: 'Product 4',
                    productPrice: 8.99,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add a Product',
        onPressed: () {
          // Navigate to the product adding page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddProductScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class ProductCard extends StatefulWidget {
  final String imageAsset;
  final String productName;
  final double productPrice;

  const ProductCard({
    super.key,
    required this.imageAsset,
    required this.productName,
    required this.productPrice,
  });

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                widget.imageAsset,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.productName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              '₹${widget.productPrice}',
              style: const TextStyle(fontSize: 16, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
