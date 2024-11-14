import 'package:flutter/material.dart';

class CustomFedingWidget extends StatefulWidget {
  const CustomFedingWidget({super.key, required this.child});
  final Widget child;
  @override
  State<CustomFedingWidget> createState() => _CustomFedingWidgetState();
}

class _CustomFedingWidgetState extends State<CustomFedingWidget>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    animation =
        Tween<double>(begin: 0.2, end: 0.8).animate(animationController);
    animationController.repeat(reverse: true);
    animationController.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: animation.value,
      child: widget.child,
    );
  }
}
