import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Column(children: [
        const SizedBox(height: 10),
        ElevatedButton(onPressed: () => Navigator.of(context).pop(),
            child: const Icon(Icons.navigate_before, size: 50))
      ])),
    );
  }
}
