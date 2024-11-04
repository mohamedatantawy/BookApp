import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:product/Features/Home/presentation/Views/widgets/Best_seller_List_view_item.dart';
import 'package:product/Features/Home/presentation/Views/widgets/Best_sller_ListView.dart';
import 'package:product/Features/Home/presentation/Views/widgets/CustomeAppbar.dart';
import 'package:product/Features/Home/presentation/Views/widgets/customeListView.dart';
import 'package:product/Features/Home/presentation/Views/widgets/customeListViewItem.dart';
import 'package:product/constants.dart';
import 'package:product/core/utils/assets.dart';
import 'package:product/core/utils/style.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomeAppBar(),
              ),
              SizedBox(
                height: 30,
              ),
              CustomeListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'Best Seller',
                  style: Style.textstyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Best_seller_listview(
              scrollPhysics: NeverScrollableScrollPhysics(),
            ),
          ),
        )
      ],
    );
  }
}
