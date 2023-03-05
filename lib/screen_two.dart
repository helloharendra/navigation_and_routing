import 'package:flutter/material.dart';
import 'package:navigation_and_routing/ScreenThree.dart';

class ScreenTwo extends StatefulWidget {
  final String name;
  final int number;
  const ScreenTwo({Key? key, required this.name, this.number = 4})
      : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name.toString() + ' ' + widget.number.toString()),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenThree(),
                  ),
                );
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.green,
                child: const Center(
                  child: Text('Screen 2'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
