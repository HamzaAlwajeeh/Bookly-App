import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          BookDetailsCustomAppBar(),
          SizedBox(height: 30),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: CustomBookItem(),
          ),
          SizedBox(height: 20),
          BookDetails(),
        ],
      ),
    );
  }
}

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("The Jungle Book", style: Styles.textStyle30),
        SizedBox(height: 2),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        SizedBox(height: 16),
        BooksRating(),
      ],
    );
  }
}
