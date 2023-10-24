import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  static const String pageTwo = 'pageTwo';
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageTwo Screen'),
      ),
    );
  }
}
