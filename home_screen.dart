import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _opacity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
          onPressed: (() {
            setState(() {
              _opacity = 0.3;
            });
          }),
          child: Text('Animate')),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
        child: Column(
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 3),
              child: Card(
                child: ListTile(
                  title: Text('I am Ismail Hossain'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
