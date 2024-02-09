import 'package:flutter/material.dart';

class ShoppingCartButton extends StatefulWidget {
  ShoppingCartButton({super.key});

  @override
  State<ShoppingCartButton> createState() => _ShoppingCartButtonState();
}

class _ShoppingCartButtonState extends State<ShoppingCartButton> {
  bool isExpandable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpandable = !isExpandable;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            width: isExpandable ? 300 : 80.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: isExpandable ? Colors.green : Colors.blue,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
