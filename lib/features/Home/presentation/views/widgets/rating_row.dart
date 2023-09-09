import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bookly_app/core/utils/styles.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({super.key, required this.mainAxisAlignment});

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          '4.8',
          style: styles.textStyle16,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          '(245)',
          style: styles.textStyle14,
        ),
      ],
    );
  }
}
