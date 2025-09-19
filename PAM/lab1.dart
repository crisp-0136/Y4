import 'package:flutter/material.dart';

void main() {
  runApp(const SpeedApp());
}

class SpeedApp extends StatelessWidget {
  const SpeedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Average Speed Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SpeedHomePage(),
    );
  }
}

class SpeedHomePage extends StatefulWidget {
  const SpeedHomePage({super.key});

  @override
  State<SpeedHomePage> createState() => _SpeedHomePageState();
}

class _SpeedHomePageState extends State<SpeedHomePage> {
  final TextEditingController _distanceController = TextEditingController();
  final TextEditingController _hoursController = TextEditingController();
  final TextEditingController _minutesController = TextEditingController();
  final TextEditingController _secondsController = TextEditingController();

  String _result = "";

  void _calculateSpeed() {
    final distanceText = _distanceController.text;
    final hoursText = _hoursController.text;
    final minutesText = _minutesController.text;
    final secondsText = _secondsController.text;


    final distance = double.tryParse(distanceText);
    final hours = int.tryParse(hoursText.isEmpty ? "0" : hoursText) ?? 0;
    final minutes = int.tryParse(minutesText.isEmpty ? "0" : minutesText) ?? 0;
    final seconds = int.tryParse(secondsText.isEmpty ? "0" : secondsText) ?? 0;

    final totalHours = hours + (minutes / 60.0) + (seconds / 3600.0);

    if (totalHours == 0) {
      setState(() {
        _result = "⚠️ Time cannot be zero.";
      });
      return;
    }

    if (distance == null ) {
      setState(() {
        _result = "⚠️ Distance cannot be zero.";
      });
      return;
    }
    final speed = distance / totalHours;
    setState(() {
      _result = "Average Speed: ${speed.toStringAsFixed(2)} km/hour";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Average Speed Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _distanceController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Distance(km)",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const Text("Time:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _hoursController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Hours",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: _minutesController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Minutes",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: _secondsController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Seconds",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _calculateSpeed,
                child: const Text("Calculate Speed"),
              ),
              const SizedBox(height: 20),
              Text(
                _result,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
