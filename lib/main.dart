
import 'package:flutter/material.dart';

void main() {
  runApp(const SivaGowriApp());
}

class SivaGowriApp extends StatelessWidget {
  const SivaGowriApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Siva Gowri',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Siva Gowri"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            card("Given Amount", "₹1,20,000"),
            card("Collected Amount", "₹80,000"),
            card("Remaining Balance", "₹40,000"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Add Customer"),
            ),
          ],
        ),
      ),
    );
  }

  Widget card(String title, String value) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(value),
      ),
    );
  }
}
