import 'package:flutter/material.dart';

import 'wavy_clipper.dart';

class WavyBottomBar extends StatelessWidget {
  const WavyBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0,
      child: ClipPath(
        clipper: WavyClipper(),
        child: Container(
          height: size.height * 0.09,
          width: size.width,
          color: Colors.teal[800],
          padding: const EdgeInsets.only(top: 4),
        ),
      ),
    );
  }
}
