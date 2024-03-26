import 'package:flutter/material.dart';

class CartAdditionPage extends StatefulWidget {
  final String image;
  final String title;
  final String price;

  CartAdditionPage({
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  _CartAdditionPageState createState() => _CartAdditionPageState();
}

class _CartAdditionPageState extends State<CartAdditionPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Added to Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(widget.image),
            SizedBox(height: 20),
            Text(
              widget.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Price: ${widget.price}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (quantity > 1) {
                        quantity--;
                      }
                    });
                  },
                ),
                Text(
                  '$quantity',
                  style: TextStyle(fontSize: 20),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      quantity++;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
