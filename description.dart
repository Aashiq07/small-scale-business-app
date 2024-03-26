import 'package:flutter/material.dart';
import 'package:login/Pages/address_page.dart';
import 'package:login/Pages/cart_addition_page.dart';
import 'package:login/Pages/chatpage.dart';

class ProductDescriptionPage extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String description;

  ProductDescriptionPage({
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(image),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Price: $price",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddressPage(
                                  productName: title,
                                ),
                              ),
                            );
                          },
                          child: Text('Buy Now'),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CartAdditionPage(
                                  image: image,
                                  title: title,
                                  price: price,
                                ),
                              ),
                            );
                          },
                          child: Text('Add to Cart'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatScreen()),
          );
        },
        tooltip: 'AI Chatbot',
        child: const Icon(Icons.chat),
      ),
    );
  }
}
