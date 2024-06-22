import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  double hasilHitung = 0;
  final inputan1 = TextEditingController();
  final inputan2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: inputan1,
          ),
          TextField(
            controller: inputan2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    double nilai1 = double.parse(inputan1.text);
                    double nilai2 = double.parse(inputan2.text);
                    setState(() {
                      hasilHitung = nilai1 + nilai2;
                    });
                  },
                  child: const Text("+")),
              ElevatedButton(
                  onPressed: () {
                    double nilai1 = double.parse(inputan1.text);
                    double nilai2 = double.parse(inputan2.text);
                    setState(() {
                      hasilHitung = nilai1 - nilai2;
                    });
                  },
                  child: const Text("-")),
              ElevatedButton(
                  onPressed: () {
                    double nilai1 = double.parse(inputan1.text);
                    double nilai2 = double.parse(inputan2.text);
                    setState(() {
                      hasilHitung = nilai1 * nilai2;
                    });
                  },
                  child: const Text("*")),
              ElevatedButton(
                  onPressed: () {
                    double nilai1 = double.parse(inputan1.text);
                    double nilai2 = double.parse(inputan2.text);
                    setState(() {
                      hasilHitung = nilai1 / nilai2;
                    });
                  },
                  child: const Text("/"))
            ],
          ),
          const Text("Hasil Perhitungan"),
          const Text("$hasilHitung")
        ],
      ),
    );
  }
}
