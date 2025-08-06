import 'package:bookly_app/Features/Home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/details_actions.dart';
import 'package:bookly_app/Features/home/controller/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});
  @override
  Widget build(BuildContext context) {
    final BookModel bookModel =
        BlocProvider.of<SimilarBooksCubit>(context).bookDetails;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: CustomBookItem(bookModel: bookModel),
          ),
          SizedBox(height: 18),
          Text(
            bookModel.volumeInfo.title!,
            style: Styles.textStyle30,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 2),
          Opacity(
            opacity: 0.7,
            child: Text(
              bookModel.volumeInfo.authors![0],
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SizedBox(height: 10),
          BooksRating(rating: 4, count: 255),
          SizedBox(height: 25),
          DetailsActions(),
        ],
      ),
    );
  }
}
