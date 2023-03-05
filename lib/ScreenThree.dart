import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Screen 3',
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.green,
                child: const Center(
                  child: Text('Screen 3'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
