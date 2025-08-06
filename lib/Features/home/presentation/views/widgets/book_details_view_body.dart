import 'package:bookly_app/Features/home/presentation/views/widgets/book_details.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/details_actions.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookDetailsCustomAppBar(),
        SizedBox(height: 10),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
          child: CustomBookItem(),
        ),
        SizedBox(height: 18),
        BookDetails(),
        SizedBox(height: 25),
        DetailsActions(),
        SizedBox(height: 30),
        SimilarBooks(),
      ],
    );
  }
}
