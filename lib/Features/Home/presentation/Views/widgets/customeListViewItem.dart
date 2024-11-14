import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:product/core/utils/assets.dart';

class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
