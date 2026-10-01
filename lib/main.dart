import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int quantity = 5;

  @override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Sandwich Shop App',
    home: Scaffold(
      appBar: AppBar(
  title: const Text('My Sandwich Shop'),
  backgroundColor: Colors.orange,
),
      body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    OrderItemDisplay(quantity, 'Footlong'),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => print('Add button pressed!'),
          child: const Text('Add'),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: () => print('Remove button pressed!'),
          child: const Text('Remove'),
        ),
      ],
    ),
  ],
),
      floatingActionButton: FloatingActionButton(
  onPressed: () {
    setState(() {
      quantity++;
    });
  },
  child: const Icon(Icons.add),
),
    ),
  );
}
}
class OrderItemDisplay extends StatelessWidget {
  final String itemType;
  final int quantity;

  const OrderItemDisplay(this.quantity, this.itemType, {super.key});

  
  @override
  Widget build(BuildContext context) {
    return Text('${quantity} $itemType sandwich(es): ${'🥪' * quantity}');
  }
}