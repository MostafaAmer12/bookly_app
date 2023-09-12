import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bookly_app/core/utils/styles.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({super.key, required this.mainAxisAlignment, required this.rating, required this.count});

  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '$rating',
          style: styles.textStyle16,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '($count)',
          style: styles.textStyle14,
        ),
      ],
    );
  }
}
