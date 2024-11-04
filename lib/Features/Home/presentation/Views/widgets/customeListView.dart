import 'package:flutter/material.dart';
import 'package:product/Features/Home/presentation/Views/widgets/customeListViewItem.dart';

class CustomeListView extends StatelessWidget {
  const CustomeListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const FeatureListViewItem();
          },
        ),
      ),
    );
  }
}
