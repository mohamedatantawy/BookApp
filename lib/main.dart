import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:product/Features/Home/data/dataSources/home_localDataSource.dart';
import 'package:product/Features/Home/data/dataSources/home_remoteData_Source.dart';
import 'package:product/Features/Home/data/repos/home_repo_impl.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/Features/Home/doman/user_case/fatchFeaturedBookis_use_case.dart';
import 'package:product/Features/Home/doman/user_case/fatchNewesBooks_UseCase.dart';
import 'package:product/Features/Home/presentation/manager/cubit/newest_books_cubit.dart';
import 'package:product/Features/Home/presentation/manager/featured_books/featured_books_cubit.dart';
import 'package:product/Features/Splash/data/presentation/View/splashView.dart';
import 'package:product/constants.dart';
import 'package:product/core/utils/ApiService.dart';
import 'package:product/core/utils/GoRouter.dart';
import 'package:product/core/utils/functions/Smiple_bloc_observer.dart';
import 'package:product/core/utils/functions/setup_service_locator.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(khiveFeatuerBox);
  await Hive.openBox<BookEntity>(khiveNewestBox);
  Bloc.observer = SmipleBlocObserver();
  setup_service_locator();
  runApp(const Bookapp());
}

class Bookapp extends StatelessWidget {
  const Bookapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return FeaturedBooksCubit(
            FatchfeaturedbookisUseCase(
              getit.get<HomeRepoImpl>(),
            ),
          )..fetchfeaturedbooks();
        }),
        BlocProvider(create: (context) {
          return NewestBooksCubit(
            FatchNewestbookisUseCase(
              getit.get<HomeRepoImpl>(),
            ),
          )..fetchnewestBooks();
        })
      ],
      child: MaterialApp.router(
        routerConfig: Gorouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kprimaycolor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
