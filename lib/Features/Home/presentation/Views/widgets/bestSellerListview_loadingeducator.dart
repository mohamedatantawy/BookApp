import 'package:flutter/material.dart';
import 'package:product/Features/Home/presentation/Views/widgets/bestSellerListViewITem_loading_educator.dart';
import 'package:product/core/widgets/custom_feding_widget.dart';

class BestsellerlistviewLoadingeducator extends StatelessWidget {
  const BestsellerlistviewLoadingeducator({super.key, this.scrollPhysics});
final ScrollPhysics? scrollPhysics;
  @override
  Widget build(BuildContext context) {
    return CustomFedingWidget(
      child: ListView.builder(
          physics: scrollPhysics,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const  Padding(
              padding: EdgeInsets.only(bottom: 12),
              child:BestsellerlistviewitemLoadingEducator(),
            );
          }),
    );
  }
}