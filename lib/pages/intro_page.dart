import 'package:ecommerce_app/components/my_button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            // title
            const Padding(
              padding: EdgeInsets.only(bottom: 10, top: 25),
              child: Text(
                "Minimal Shop",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),

            // subtitle
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Text(
                "Premium Quality Products",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),

            // button
            MyButton(
                onTap: () {
                  Navigator.pushNamed(context, '/shop_page');
                },
                child: const Icon(Icons.arrow_forward)),
          ],
        ),
      ),
    );
  }
}
