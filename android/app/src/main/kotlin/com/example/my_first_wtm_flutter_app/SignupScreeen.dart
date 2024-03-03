

import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});



  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              obscureText: true, // hide password
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle signup logic (replace with your implementation)
                Navigator.pop(context); // Navigate back to login
              },
              child: const Text('Signup'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), // Go back to login
              child: const Text('Already have an account? Login'),
            ),
          ],
        ),
      ),
    );
  }
}
