
import 'package:flutter/material.dart';
import 'package:product/core/widgets/textbuttonAction.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextbuttonAction(
              text: r'19.99 $',
              backgroundcolor: Colors.white,
              color: Colors.black,
              fontsize: 20,
            ),
          ),
          Expanded(
            child: TextbuttonAction(
              text: r'Free preview',
              backgroundcolor: Color(0xffEF8361),
              color: Colors.white,
              fontsize: 20,
              fontWeight: FontWeight.w500,
              borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }
}
