import 'package:bookly_app/features/Home/presentation/views/widgets/custom_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView  extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 14),
              child: CustomItem(),
            );
          }),
    );;
  }
}
