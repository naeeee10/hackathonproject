import 'package:flutter/material.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Text(
          "Feature not available yet",
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontSize: 20,
              ),
        ),
      ),
    );
  }
}
