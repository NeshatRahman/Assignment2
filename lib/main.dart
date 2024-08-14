import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() {
  runApp(my_app());
}

class my_app extends StatelessWidget {
  const my_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home_page(),
    );
  }
}

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Greeting App',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black87,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello, World!',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Welcome to Flutter!',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Image.asset('assets/images/flutter.png'),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Button Pressed!')),
                  );
                },
                child: Text('Press Me'),
              ),
            ],
          ),
        ));
  }
}
