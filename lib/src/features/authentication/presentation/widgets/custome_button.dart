import 'package:e_commerce/src/app/themes.dart';
import 'package:e_commerce/src/core/utils/palette.dart';
import 'package:flutter/material.dart';

class CostumeBotton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const CostumeBotton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: Palette.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        label,
        style: bodyLarge.copyWith(
            fontWeight: FontWeight.w700, color: Palette.white),
      ),
    );
  }
}
