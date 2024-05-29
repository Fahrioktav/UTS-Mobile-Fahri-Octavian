import 'package:flutter/material.dart';
import 'package:grocery_store_app/utils/colors.dart'; // Pastikan jalur impor benar

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: primaryColors,
      ),
      body: Center(
        child: Text('This is the profile page'),
      ),
    );
  }
}
