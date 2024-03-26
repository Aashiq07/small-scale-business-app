import 'package:flutter/material.dart';
import 'package:login/Pages/admin_page.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        childAspectRatio: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: [
          SettingsButton(
            text: 'Turn Seller',
            onPressed: () {
              // Navigate to a different page (replace `YourPage()` with your page)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AdminPage()),
              );
            },
          ),
          SettingsButton(
            text: 'Feedback',
            onPressed: () {
              // Add your functionality for Feedback button here
            },
          ),
          SettingsButton(
            text: 'Profile',
            onPressed: () {
              // Add your functionality for Profile button here
            },
          ),
          SettingsButton(
            text: 'About',
            onPressed: () {
              // Navigate to the About page
            },
          ),
        ],
      ),
    );
  }
}

class SettingsButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const SettingsButton({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  _SettingsButtonState createState() => _SettingsButtonState();
}

class _SettingsButtonState extends State<SettingsButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _isPressed = !_isPressed;
        });
        widget.onPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: _isPressed
            ? Colors.grey
            : Colors.blue, // Change button color based on press state
      ),
      child: Text(widget.text),
    );
  }
}
