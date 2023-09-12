import 'package:bookly_app/core/widgets/custom_error.dart';
import 'package:bookly_app/core/widgets/custom_loading.dart';
import 'package:bookly_app/features/Home/presentation/model_views/bestseller_books_cubit/bestseller_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/itemBuilder/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestsellerBooksCubit, BestsellerBooksState>(
      builder: (context, state) {
        if (state is BestsellerBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerItem(books: state.books[index],),
              );
            },
          );
        } else if (state is BestsellerBooksFailure) {
          return CustomError(
            error: state.errMessage,
          );
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
