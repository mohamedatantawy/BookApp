import 'package:flutter/material.dart';
import 'package:product/Features/Home/presentation/Views/widgets/similarBook_listView.dart';
import 'package:product/core/utils/style.dart';

class similarBooksSection extends StatelessWidget {
  const similarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'You can also like',
            style: Style.textstyle16,
          ),
          SizedBox(
            height: 20,
          ),
          similarBook_listView(),
        ],
      ),
    );
  }
}
