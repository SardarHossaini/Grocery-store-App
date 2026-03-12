import 'package:flutter/material.dart';
import 'package:flutter_first/second.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
            child: Image.asset(
              "assets/images/grapes.png",
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: Text(
              "We deliver groceries at your doorsite",
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            "Fresh item everyday",
            style: TextStyle(color: Colors.grey[600]),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return Second();
            })),
            child: Container(
              decoration:
                  BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(16),
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
