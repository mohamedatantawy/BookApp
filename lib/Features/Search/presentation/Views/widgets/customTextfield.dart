import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: const Icon(Icons.search),
        hintText: 'Search',
        border: outlinebored(),
        enabledBorder: outlinebored(),
        focusedBorder: outlinebored(),
      ),
    );
  }

  OutlineInputBorder outlinebored() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.white));
  }
}
