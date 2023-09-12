import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/itemBuilder/custom_item.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/rating_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
    required this.books,
  });

  final BookModel books;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRoutes.kBookDetailsView,
          extra: books,
        );
      },
      child: Row(
        children: [
          SizedBox(
            height: 120,
            child: CustomItem(
              imageUrl: books.volumeInfo!.imageLinks?.thumbnail ?? '',
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    books.volumeInfo!.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: styles.textStyle20,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  books.volumeInfo!.authors![0],
                  style: styles.textStyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    const Text(
                      'Free',
                      style: styles.textStyle20,
                    ),
                    const Spacer(),
                    RatingRow(
                      mainAxisAlignment: MainAxisAlignment.start,
                      rating: books.volumeInfo!.averageRating ?? 0,
                      count: books.volumeInfo!.ratingsCount ?? 0,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
