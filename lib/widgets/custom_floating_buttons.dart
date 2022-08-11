import 'package:flutter/material.dart';

class CustomFloatingButtons extends StatelessWidget {
  final Function increaseFn;
  final Function dicreseFn;
  final Function resetFn;

  const CustomFloatingButtons({
    Key? key,
    required this.increaseFn,
    required this.dicreseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.black,
          splashColor: Colors.blue,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          child: const Icon(Icons.settings_backup_restore_outlined),
          onPressed: () => resetFn(),
        ),
        FloatingActionButton(
          backgroundColor: Colors.black,
          splashColor: Colors.blue,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          child: const Icon(Icons.remove_outlined),
          onPressed: () => dicreseFn(),
        ),
        FloatingActionButton(
          backgroundColor: Colors.black,
          splashColor: Colors.blue,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          child: const Icon(Icons.add),
          onPressed: () => increaseFn(),
        ),
      ],
    );
  }
}
