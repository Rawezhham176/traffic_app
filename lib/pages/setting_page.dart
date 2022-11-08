import 'package:flutter/material.dart';
import 'package:traffic_app/pages/distance_page.dart';
import 'package:traffic_app/pages/languages_page.dart';
import 'package:traffic_app/pages/voice_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 100, left: 33, right: 33),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: const Size(280, 100)),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext c) {
                return const LanguagePage();
              }));
            },
            child: const Text(
              "Languages",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w100),
            ),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: 50, left: 33, right: 33),
            child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(280, 100)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext c) {
                    return const VoicePage();
                  }));
                },
                child: const Text(
                  "Voice",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w100),
                ))),
        Container(
            margin: const EdgeInsets.only(top: 50, left: 33, right: 33),
            child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(280, 100)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext c) {
                    return const DistancePage();
                  }));
                },
                child: const Text(
                  "Distance",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w100),
                ))),
      ],
    );
  }
}
