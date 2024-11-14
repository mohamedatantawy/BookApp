import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/Features/Home/presentation/Views/widgets/Book_Rating.dart';
import 'package:product/constants.dart';
import 'package:product/core/utils/GoRouter.dart';
import 'package:product/core/utils/assets.dart';
import 'package:product/core/utils/style.dart';

class BestsellerListViewItem extends StatelessWidget {
  const BestsellerListViewItem({super.key, required this.books});
  final BookEntity books;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Gorouter.kBookDetailView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.6 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: CachedNetworkImage(
                  imageUrl: books.image ?? '',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        books.Bookname,
                        style: Style.textstyle20.copyWith(
                          fontFamily: kgtsertrafont,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      books.authorname??'',
                      style: Style.textstyle14.copyWith(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff707070)),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${books.price}"r'$',
                          style: Style.textstyle20.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                         RowReting(rate: books.rating??3.8,number: 2000,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
