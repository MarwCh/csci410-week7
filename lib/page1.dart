import 'package:flutter/material.dart';
import 'page2.dart';
import 'car.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final TextEditingController controllerHours = TextEditingController();
  final TextEditingController controllerRate = TextEditingController();

  @override
  void dispose() {
    controllerHours.dispose();
    controllerRate.dispose();
    super.dispose();
  }

  void openPage2() {
    try {
      int hours = int.parse(controllerHours.text);
      double rate = double.parse(controllerRate.text);
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Page2(),
      settings: RouteSettings(arguments: Employee(hours, rate))
      ));
    }
    catch(ex) {
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(ex.toString())));
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Center(child: Column(children: [
        const SizedBox(height: 10),
        SizedBox(width: 200, height: 50, child: TextField(
          controller: controllerHours,
          keyboardType: TextInputType.numberWithOptions(signed: false),
          decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Enter hours'),
        )),
        const SizedBox(height: 10),
        SizedBox(width: 200, height: 50, child: TextField(
          controller: controllerRate,
          keyboardType: TextInputType.numberWithOptions(signed: false, decimal: true),
          decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Enter rate'),
        )),
        ElevatedButton(onPressed: openPage2,
            child: const Icon(Icons.navigate_next, size: 50))
      ])),
    );
  }
}
