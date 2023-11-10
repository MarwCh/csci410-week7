import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        centerTitle: true,
      ),
      body: Center(child: Column(children: [
        const SizedBox(height: 10),
        ElevatedButton(onPressed: () {
          Navigator.of(context).pop();
        },
            child: const Icon(Icons.navigate_before, size: 50)
        )
      ]),
      ),
      );
  }
}
