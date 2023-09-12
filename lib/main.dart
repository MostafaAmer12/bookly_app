import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/observer/simple_bloc_observer.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/Home/presentation/model_views/bestseller_books_cubit/bestseller_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/model_views/featured_books_cubit/featured_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            HomeRepoImpl(
              apiService: ApiService(
                dio: Dio(),
              ),
            ),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => BestsellerBooksCubit(
            HomeRepoImpl(
              apiService: ApiService(
                dio: Dio(),
              ),
            ),
          )..fetchBestSellerBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
