import 'package:flutter/material.dart';
import 'package:navigation_and_routing/main.dart';
import 'package:navigation_and_routing/screen_two.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('homeScreen'),
      ),
      body: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Homepage',
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
                Navigator.push(
                  //conventional method
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ScreenTwo(
                            name: 'harendraprajapati',
                            // number: 72,
                          )),
                );
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.green,
                child: const Center(
                  child: Text('Screen 1'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
