
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {

  static const String path = '/dashboard';

  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Dashboard2'),
      ),
    );
  }
}