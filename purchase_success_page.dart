import 'package:flutter/material.dart';

class PurchaseSuccessPage extends StatelessWidget {
  final String successMessage;

  PurchaseSuccessPage({required this.successMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Purchase Successful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 100,
            ),
            SizedBox(height: 20),
            Text(
              successMessage,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to previous page
              },
              child: Text('Back to Product'),
            ),
          ],
        ),
      ),
    );
  }
}
