import 'package:flutter/material.dart';
import 'package:login/Pages/payment_page.dart'; // Import your payment page

class AddressPage extends StatefulWidget {
  final String productName;

  AddressPage({required this.productName});

  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  String address = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Enter your address'),
              onChanged: (value) {
                setState(() {
                  address = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Proceed to payment page after address is typed
                if (address.isNotEmpty) {
                  // Navigate to PaymentPage and pass address and product name
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Payment(),
                    ),
                  );
                } else {
                  // Show an alert or message to enter the address
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please enter your address.'),
                    ),
                  );
                }
              },
              child: Text('Proceed to Payment'),
            ),
          ],
        ),
      ),
    );
  }
}
