import 'package:flutter/material.dart';
import 'package:product/Features/Home/presentation/Views/widgets/Book_Rating.dart';
import 'package:product/Features/Home/presentation/Views/widgets/bookAction.dart';
import 'package:product/Features/Home/presentation/Views/widgets/custome_imageBookView.dart';
import 'package:product/core/utils/style.dart';

class booksDetailSections extends StatelessWidget {
  const booksDetailSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const custome_image_bookView(),
        const SizedBox(
          height: 43,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Harry Potter and the Goblet of Fire',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Style.textstyle30,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Opacity(
            opacity: 0.7,
            child: Text(
              'J.D.Rowling',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: Style.textstyle18.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const RowReting(),
        const SizedBox(
          height: 10,
        ),
        const BookAction(),
      ],
    );
  }
}
