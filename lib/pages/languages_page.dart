import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 50,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Languages",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
        ),
        toolbarHeight: 100,
      ),
      body: Column(children: [
        Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 100, left: 33, right: 33),
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
                  "English",
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
                  "Español",
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
                  "Deutsch",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w100),
                ),
              ),
            )),
      ]),
    );
  }
}
