import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/widgets/custom_error.dart';
import 'package:bookly_app/core/widgets/custom_loading.dart';
import 'package:bookly_app/features/Home/presentation/model_views/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/itemBuilder/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturesListView extends StatelessWidget {
  const FeaturesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRoutes.kBookDetailsView,
                        extra: state.books[index],
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 14),
                      child: CustomItem(
                        imageUrl: state.books[index].volumeInfo!.imageLinks
                                ?.thumbnail ??
                            '',
                      ),
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomError(error: state.errMessage);
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
