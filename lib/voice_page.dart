import 'package:flutter/material.dart';

class VoicePage extends StatefulWidget {
  const VoicePage({super.key});

  @override
  State<VoicePage> createState() => _VoicePageState();
}

class _VoicePageState extends State<VoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Voice")),
      body: Column(children: [
        Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 150, left: 33, right: 33),
            child: SizedBox(
              width: 280,
              height: 100,
              child: ElevatedButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.redAccent; //<-- SEE HERE
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Male",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w100),
                ),
              ),
            )),
        Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 50, left: 33, right: 33),
            child: SizedBox(
              width: 280,
              height: 100,
              child: ElevatedButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.redAccent; //<-- SEE HERE
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Female",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w100),
                ),
              ),
            )),
        Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 50, left: 33, right: 33),
            child: SizedBox(
              width: 280,
              height: 100,
              child: ElevatedButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.redAccent; //<-- SEE HERE
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Robot",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w100),
                ),
              ),
            )),
      ]),
    );
  }
}
