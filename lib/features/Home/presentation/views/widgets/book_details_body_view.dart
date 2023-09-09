import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_details_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_item.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/rating_row.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              children: [
                const CustomDetailsAppBar(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width * 0.46,
                  child: const CustomItem(),
                ),
                const SizedBox(
                  height: 22,
                ),
                const Text(
                  'The Jungle Book',
                  style: styles.textStyle30,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Rudyard Kipling',
                  style: styles.textStyle18,
                ),
                const SizedBox(
                  height: 18,
                ),
                const RatingRow(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 25,
                ),
                const BooksAction(),
                const Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'You can also like',
                    style: styles.textStyle14,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SimilarBooksListView(),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
