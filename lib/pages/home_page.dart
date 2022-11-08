import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            border: Border.all(width: 1, color: Colors.blueGrey),
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 100, left: 33, right: 33),
          padding: const EdgeInsets.all(10),
          child: const Text("Hello, nice to hear you again!",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              )),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 50),
          child: const Icon(
            Icons.emoji_emotions,
            size: 250,
            color: Colors.blueGrey,
          ),
        )
      ],
    );
  }
}
