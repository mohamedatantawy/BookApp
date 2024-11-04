import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:product/Features/Home/presentation/Views/HomeView.dart';
import 'package:product/Features/Splash/data/presentation/View/widget/slidingText.dart';
import 'package:product/constants.dart';
import 'package:product/core/utils/GoRouter.dart';
import 'package:product/core/utils/assets.dart';

class SplashviewBody extends StatefulWidget {
  const SplashviewBody({super.key});

  @override
  State<SplashviewBody> createState() => _SplashviewBodyState();
}

class _SplashviewBodyState extends State<SplashviewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sideanimation;
  @override
  void initState() {
    super.initState();

    initslidinganimated();
    navigatoHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        slidingText(sideanimation: sideanimation),
      ],
    );
  }

  void initslidinganimated() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    sideanimation = Tween<Offset>(begin: const Offset(0, 4), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void navigatoHome() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        GoRouter.of(context).push(Gorouter.kHomeView);

        // Get.to(()=>const Homeview(),transition: Transition.fadeIn,duration:ktersationDuration);
      },
    );
  }
}
