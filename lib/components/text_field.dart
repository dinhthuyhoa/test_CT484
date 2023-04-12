import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.label,
    this.hintText,
    this.obscureText,
    this.isDigitalsOnly,
  });
  final TextEditingController controller;
  final bool? isDigitalsOnly;
  final String? label;
  final String? hintText;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller,
          obscureText: obscureText ?? false,
          inputFormatters: isDigitalsOnly ?? false
              ? [FilteringTextInputFormatter.digitsOnly]
              : [],
          decoration: InputDecoration(
            hintText: hintText,
            label: Text(
              label ?? '',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
      ],
    );
  }
}
