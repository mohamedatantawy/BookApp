import 'package:flutter/material.dart';

class FeaturelistviewitemLoadingEducator extends StatelessWidget {
  const FeaturelistviewitemLoadingEducator({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
        aspectRatio: 2.5 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            color: Colors.grey[50],
          ),
        ),
      );
  }
}