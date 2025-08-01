import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Counter',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Simple Counter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // This variable stores the current count.

  void _incrementCounter() {

    setState(() {
      _counter++; // Increase the counter by one.
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) { // Only decrement if counter is greater than 0
        _counter--; // Decrease the counter by one.
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0; // Reset the counter to zero.
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center, // Center the children vertically.
          children: <Widget>[
            const Text(
              'The counter value is:',
            ),
            Text(
              '$_counter', // Display the current counter value.
              style: Theme.of(context).textTheme.headlineMedium, // Use a predefined text style from the theme.
            ),
          ],
        ),
      ),
      floatingActionButton: Column( // Use a Column to stack multiple FABs vertically
        mainAxisAlignment: MainAxisAlignment.end, // Align FABs to the bottom
        children: <Widget>[
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add), // Simple add icon.
          ),
          const SizedBox(height: 10), // Some spacing between buttons
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            backgroundColor: Colors.orange, // Give it a different color
            child: const Icon(Icons.remove), // Simple remove icon.
          ),
          const SizedBox(height: 10), // Some spacing
          FloatingActionButton(
            onPressed: _resetCounter,
            tooltip: 'Reset',
            backgroundColor: Colors.red, // Give it another color
            child: const Icon(Icons.refresh), // Simple refresh icon.
          ),
        ],
      ),
    );
  }
}
