import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:product/Features/Home/presentation/Views/widgets/Book_Rating.dart';
import 'package:product/Features/Home/presentation/Views/widgets/bookAction.dart';
import 'package:product/Features/Home/presentation/Views/widgets/booksdetailSections.dart';
import 'package:product/Features/Home/presentation/Views/widgets/custome_imageBookView.dart';
import 'package:product/Features/Home/presentation/Views/widgets/customeappbar2.dart';
import 'package:product/Features/Home/presentation/Views/widgets/similarBook_listView.dart';
import 'package:product/Features/Home/presentation/Views/widgets/similarBooksSections.dart';
import 'package:product/core/utils/assets.dart';
import 'package:product/core/utils/style.dart';
import 'package:product/core/widgets/textbuttonAction.dart';

class BookdetailviewBody extends StatelessWidget {
  const BookdetailviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          fillOverscroll: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                CustomeAppBar2(),
                SizedBox(
                  height: 40,
                ),
                booksDetailSections(),
                SizedBox(
                  height: 50,
                ),
                similarBooksSection(),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
