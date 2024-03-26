import 'dart:io';

import 'package:flutter/material.dart';
import 'package:login/Pages/payment_config.dart';
import 'package:login/Pages/purchase_success_page.dart';
import 'package:pay/pay.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String os = Platform.operatingSystem;
  PaymentMethod? _selectedPaymentMethod;
  // Add your Google Pay configuration

  var applePayButton = ApplePayButton(
    paymentConfiguration: PaymentConfiguration.fromJsonString(defaultApplePay),
    paymentItems: const [
      PaymentItem(
        label: 'Item A',
        amount: '0.01',
        status: PaymentItemStatus.final_price,
      ),
      PaymentItem(
        label: 'Item B',
        amount: '0.01',
        status: PaymentItemStatus.final_price,
      ),
      PaymentItem(
        label: 'Total',
        amount: '0.02',
        status: PaymentItemStatus.final_price,
      )
    ],
    style: ApplePayButtonStyle.black,
    width: double.infinity,
    height: 50,
    type: ApplePayButtonType.buy,
    margin: const EdgeInsets.only(top: 15.0),
    onPaymentResult: (result) => debugPrint('Payment Result $result'),
    loadingIndicator: const Center(
      child: CircularProgressIndicator(),
    ),
  );

  var googlePayButton = GooglePayButton(
    paymentConfiguration: PaymentConfiguration.fromJsonString(defaultGooglePay),
    paymentItems: const [
      PaymentItem(
        label: 'Total',
        amount: '0.01',
        status: PaymentItemStatus.final_price,
      )
    ],
    type: GooglePayButtonType.pay,
    margin: const EdgeInsets.only(top: 15.0),
    onPaymentResult: (result) => debugPrint('Payment Result $result'),
    loadingIndicator: const Center(
      child: CircularProgressIndicator(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (Platform.isIOS) applePayButton,
            Row(
              children: [
                Radio<PaymentMethod>(
                  value: PaymentMethod.cashOnDelivery,
                  groupValue: _selectedPaymentMethod,
                  onChanged: (PaymentMethod? value) {
                    setState(() {
                      _selectedPaymentMethod = value;
                    });
                  },
                ),
                Text('Cash on Delivery'),
              ],
            ),
            if (!Platform.isIOS) googlePayButton,
            SizedBox(height: 20),
            Visibility(
              visible: _selectedPaymentMethod != null,
              child: ElevatedButton(
                onPressed: _selectedPaymentMethod != null
                    ? () {
                        // Navigate to a new page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PurchaseSuccessPage(
                                    successMessage: 'Payment Successful!',
                                  )),
                        );
                      }
                    : null,
                child: Text('Confirm Order'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum PaymentMethod {
  cashOnDelivery,
  googlePay,
}

class OrderConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Confirmation'),
      ),
      body: Center(
        child: Text('Order has been confirmed!'),
      ),
    );
  }
}
