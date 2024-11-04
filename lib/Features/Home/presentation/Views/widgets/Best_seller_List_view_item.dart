import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:product/Features/Home/presentation/Views/widgets/Book_Rating.dart';
import 'package:product/constants.dart';
import 'package:product/core/utils/GoRouter.dart';
import 'package:product/core/utils/assets.dart';
import 'package:product/core/utils/style.dart';

class BestsellerListViewItem extends StatelessWidget {
  const BestsellerListViewItem({super.key});

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
                  image: const DecorationImage(
                      image: AssetImage(
                        AssetsData.image2,
                      ),
                      fit: BoxFit.fill),
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
                        'Harry Potter and the Goblet of Fire',
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
                      'J.D.Rowling',
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
                          r'19.99 $',
                          style: Style.textstyle20.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const RowReting(),
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
