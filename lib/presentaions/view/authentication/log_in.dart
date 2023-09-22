import 'package:event_app/presentaions/view/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) {
                return const Dashboard();
              }),
            );
          },
          child: const Text(
            'Login',
          ),
        ),
      ),
    );
  }
}
