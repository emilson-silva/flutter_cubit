import 'package:flutter/material.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "pirenopolis-one.png",
    "pirenopolis-two.png",
    "pirenopolis-three.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/" + images[index]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 150,
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        AppLargeTerxt(text: "Trips"),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
