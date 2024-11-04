import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:product/Features/Splash/data/presentation/View/splashView.dart';
import 'package:product/constants.dart';
import 'package:product/core/utils/GoRouter.dart';

void main() {
  runApp(const Bookapp());
}

class Bookapp extends StatelessWidget {
  const Bookapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Gorouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimaycolor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
    );
  }
}
