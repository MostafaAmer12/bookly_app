import 'package:bookly_app/features/Home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/features_list_view.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/styles.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: CustomAppBar(),
              ),
              SizedBox(
                height: 4,
              ),
              FeaturesListView(),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  'Best Seller',
                  style: styles.textStyle20,
                ),
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 14,
            ),
            child: BestSellerListView(),
          ),
        )
      ],
    ));
  }
}
