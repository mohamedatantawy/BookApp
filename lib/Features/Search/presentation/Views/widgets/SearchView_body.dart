import 'package:flutter/material.dart';
import 'package:product/Features/Home/presentation/Views/widgets/Best_sller_ListView.dart';
import 'package:product/Features/Search/presentation/Views/widgets/customTextfield.dart';
import 'package:product/core/utils/style.dart';

class SearchviewBody extends StatelessWidget {
  const SearchviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          CustomTextfield(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Search Result',
            style: Style.textstyle18,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: Best_seller_listview()),
        ],
      ),
    );
  }
}
