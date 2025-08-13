import 'dart:developer';

import 'package:bookly_app/Features/home/controller/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/controller/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/models/user.dart';
import 'package:bookly_app/core/simple_bloc_observer.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  setUpServiceLocator();

  Bloc.observer = SimpleBlocObserver();
  runApp(const BooklyApp());

  HomeRepoImpl homeRepoImpl = HomeRepoImpl(ApiService(Dio()));
  User user = await homeRepoImpl.fetchUser();
  log(user.toString());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  FeaturedBooksCubit(getIt<HomeRepoImpl>())
                    ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create:
              (context) =>
                  NewestBooksCubit(getIt<HomeRepoImpl>())..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        title: 'Bookly App',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
