import 'package:flutter/material.dart';
import 'package:product/Features/Home/presentation/Views/widgets/custome_imageBookView.dart';

class similarBook_listView extends StatelessWidget {
  const similarBook_listView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(right: 8),
                child: custome_image_bookView(),
              );
            }),
      ),
    );
  }
}
