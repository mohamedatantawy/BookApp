import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/core/utils/style.dart';

class RowReting extends StatelessWidget {
  const RowReting({super.key, required this.rate, required this.number, });
final num rate;
final num number;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 6.3,
        ),
         Text(
        "$rate",
          style: Style.textstyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            '($number)',
            style: Style.textstyle16.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
