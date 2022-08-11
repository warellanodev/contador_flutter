import 'package:flutter/material.dart';

import 'bottom_icons.dart';

class BottomNavigationIcons extends StatefulWidget {
  const BottomNavigationIcons({Key? key}) : super(key: key);

  @override
  State<BottomNavigationIcons> createState() => _BottomNavigationIconsState();
}

class _BottomNavigationIconsState extends State<BottomNavigationIcons> {
  int bottomNavigationBarItemIndex = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0,
      left: size.width * 0.02,
      right: size.width * 0.02,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomIcon(
            onPressed: () {
              setState(() {
                bottomNavigationBarItemIndex = 0;
              });
            },
            bottomIcons: bottomNavigationBarItemIndex == 0 ? true : false,
            icons: Icons.delete_outlined,
            text: 'Eliminar',
          ),
          BottomIcon(
            onPressed: () {
              setState(() {
                bottomNavigationBarItemIndex = 1;
              });
            },
            bottomIcons: bottomNavigationBarItemIndex == 1 ? true : false,
            icons: Icons.restore_outlined,
            text: 'Limpiar',
          ),
          BottomIcon(
            onPressed: () {
              setState(() {
                bottomNavigationBarItemIndex = 2;
              });
            },
            bottomIcons: bottomNavigationBarItemIndex == 2 ? true : false,
            icons: Icons.add_outlined,
            text: 'Agregar',
          ),
        ],
      ),
    );
  }
}
