import 'package:flutter/material.dart';
import 'package:product/core/utils/assets.dart';

class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsData.image2,
              ),
            ),
            borderRadius: BorderRadius.circular(12),
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
