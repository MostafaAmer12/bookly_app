import 'package:bookly_app/core/widgets/custom_text_field.dart';
import 'package:bookly_app/features/Search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/styles.dart';

class SearchBodyView extends StatelessWidget {
  const SearchBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomTextField(
            hint: 'Search',
          ),
          SizedBox(height: 16,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Text(
              'Result',
              style: styles.textStyle20,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          SearchResultListView(),
        ],
      ),
    );
  }
}
