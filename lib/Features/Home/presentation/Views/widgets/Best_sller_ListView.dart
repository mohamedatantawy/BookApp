import 'package:flutter/material.dart';
import 'package:product/Features/Home/presentation/Views/widgets/Best_seller_List_view_item.dart';

class Best_seller_listview extends StatelessWidget {
  const Best_seller_listview({super.key, this.scrollPhysics});
  final ScrollPhysics? scrollPhysics;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics:scrollPhysics,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: BestsellerListViewItem(),
          );
        });
  }
}
