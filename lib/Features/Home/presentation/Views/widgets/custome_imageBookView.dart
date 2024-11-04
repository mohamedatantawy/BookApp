import 'package:flutter/material.dart';
import 'package:product/core/utils/assets.dart';

class custome_image_bookView extends StatelessWidget {
  const custome_image_bookView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.33,
      child: AspectRatio(
        aspectRatio: 2.4 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
                image: AssetImage(
                  AssetsData.image2,
                ),
                fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
