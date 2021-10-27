import 'package:flutter/material.dart';

class NavigatorPage extends StatelessWidget {
  final String? title;
  final Widget? body;

  const NavigatorPage({Key? key, this.title, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF009B78),
        title: Text(title!),
      ),
      body: body,
    );
  }
}
