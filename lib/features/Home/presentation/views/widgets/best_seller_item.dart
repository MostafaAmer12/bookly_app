import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
