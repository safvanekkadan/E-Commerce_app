import 'package:e_commerce/src/app/themes.dart';
import 'package:e_commerce/src/core/utils/palette.dart';
import 'package:flutter/material.dart';

class CostumeTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  const CostumeTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: Palette.white,
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(
            color: Palette.black.withOpacity(0.1),
            offset: const Offset(0, 3),
            blurRadius: 10,
          ),
        ],
      ),
      child: TextFormField(
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: bodyLarge.copyWith(
              fontWeight: FontWeight.w700, color: Palette.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
