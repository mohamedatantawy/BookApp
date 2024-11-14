import 'package:flutter/material.dart';
import 'package:product/Features/Home/presentation/Views/widgets/FeatureListViewItem_loading_educator.dart';
import 'package:product/core/widgets/custom_feding_widget.dart';

class CustomelistviewLoadingEducator extends StatelessWidget {
  const CustomelistviewLoadingEducator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFedingWidget(
      child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            
            itemCount:15,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8),
                child: FeaturelistviewitemLoadingEducator()
              );
            },
          ),
        ),
    );
  }
}