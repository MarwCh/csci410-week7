import 'package:csci410_week7_fall2026/car.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    final Employee e = ModalRoute.of(context)!.settings.arguments as Employee;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Column(children: [
        const SizedBox(height: 10),
        Container(color: Colors.black, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Hours: ${e.hours}", style: TextStyle(color: Colors.white)),
          Text("Rate: \$${e.rate}", style: TextStyle(color: Colors.white)),
          Text("Tax: ${e.tax * 100}%", style: TextStyle(color: Colors.white)),
          Text("Net Salary:  \$${e.netSalary()}", style: TextStyle(color: Colors.white)),
        ])),
        const SizedBox(height: 10),
        ElevatedButton(onPressed: () => Navigator.of(context).pop(),
            child: const Icon(Icons.navigate_before, size: 50))
      ])),
    );
  }
}
