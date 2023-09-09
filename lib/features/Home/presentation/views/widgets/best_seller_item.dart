import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_item.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/rating_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRoutes.kBookDetailsView);
      },
      child: Row(
        children: [
          const SizedBox(
            height: 120,
            child: CustomItem(),
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
                  child: const Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: styles.textStyle20,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'J.K Rolling',
                  style: styles.textStyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: const [
                    Text(
                      '19.99@',
                      style: styles.textStyle20,
                    ),
                    Spacer(),
                    RatingRow(mainAxisAlignment: MainAxisAlignment.start,)
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
