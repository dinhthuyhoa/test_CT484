import 'package:flutter/material.dart';

import '../utils/utils.dart';

class PillButton extends StatelessWidget {
  const PillButton(
      {super.key,
      this.title,
      required this.onPressed,
      this.icon,
      this.backgroundColor,
      this.color});
  final String? title;
  final Widget? icon;
  final Function() onPressed;
  final Color? backgroundColor;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: backgroundColor ?? BaseColor.color4,
      ),
      child: icon ??
          Text(
            title ?? '',
            style: const TextStyle().copyWith(color: color),
          ),
    );
  }
}

class CircleButton extends StatelessWidget {
  const CircleButton(
      {super.key,
      required this.icon,
      required this.onPressed,
      this.color,
      this.backgroundColor,
      this.height,
      this.width});
  final Widget icon;
  final Function() onPressed;
  final Color? color;
  final Color? backgroundColor;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        child: InkWell(
          onTap: onPressed,
          child: Container(
            color: backgroundColor ?? Colors.transparent,
            height: height ?? 32,
            width: width ?? 32,
            child: icon,
          ),
        ),
      ),
    );
  }
}
