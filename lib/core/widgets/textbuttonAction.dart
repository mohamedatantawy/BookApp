import 'package:flutter/material.dart';
import 'package:product/core/utils/style.dart';

class TextbuttonAction extends StatelessWidget {
  const TextbuttonAction({
    super.key,
    required this.text,
    required this.backgroundcolor,
    this.borderRadius,
    required this.color,
    this.fontsize, this.fontWeight,
  });
  final String text;
  final Color backgroundcolor;
  final BorderRadius? borderRadius;
  final Color color;
  final double? fontsize;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundcolor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ??
                    const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ))),
        child: Text(
          text,
          style: Style.textstyle18.copyWith(
            color: color,
            fontSize: fontsize,
            fontWeight: fontWeight
          ),
        ),
      ),
    );
  }
}
