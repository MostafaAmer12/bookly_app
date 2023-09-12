import 'package:bookly_app/core/utils/launching_url.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(
          textColor: Colors.black,
          backgroundColor: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
          text: 'Free',
          onPressed: () {
            LaunchUrl(
              bookURL: book.accessInfo!.webReaderLink!,
            );
          },
        ),
        CustomButton(
          textColor: Colors.white,
          backgroundColor: const Color(0xffEF8262),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          text: getText(book),
          onPressed: () {
            LaunchUrl(
              bookURL: book.volumeInfo!.previewLink!,
            );
          },
        ),
      ],
    );
  }

  String getText(BookModel book) {
    if(book.volumeInfo!.previewLink==null){
      return 'Not Available';
    }else{
      return 'Preview';
    }
  }
}
