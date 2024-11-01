import 'package:flutter/material.dart';

class slidingText extends StatelessWidget {
  const slidingText({
    super.key,
    required this.sideanimation,
  });

  final Animation<Offset> sideanimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: sideanimation,
        builder: (context, _) {
          return SlideTransition(
            position: sideanimation,
            child: const Text(
              'Read free books',
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
