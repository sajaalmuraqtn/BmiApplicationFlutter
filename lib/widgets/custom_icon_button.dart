import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData iconData;
  final void Function()? onPressed;

  const CustomIconButton({super.key, required this.iconData,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(40, 40),
        shape: const CircleBorder(),
        backgroundColor: Color(0xff8B8C9E),
      ),
      child: Icon(iconData, size: 20, color: Colors.white),
    );
  }
}
