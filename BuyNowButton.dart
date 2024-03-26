// ignore: file_names
import 'package:flutter/material.dart';

class BuyNowButton extends StatelessWidget {
  final VoidCallback onPressed;

  const BuyNowButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              Colors.blue, // Change the button's background color here
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Buy Now',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
