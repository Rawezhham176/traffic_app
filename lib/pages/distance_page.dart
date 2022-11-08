import 'package:flutter/material.dart';

class DistancePage extends StatefulWidget {
  const DistancePage({super.key});

  @override
  State<DistancePage> createState() => _DistancePageState();
}

class _DistancePageState extends State<DistancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: AppBar(
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
              "Distance",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
            toolbarHeight: 100,
          )),
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
                  "0m",
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
                  "5m",
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
                  "10m",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w100),
                ),
              ),
            )),
      ]),
    );
  }
}
