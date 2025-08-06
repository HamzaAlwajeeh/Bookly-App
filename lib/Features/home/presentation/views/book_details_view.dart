import 'package:bookly_app/Features/Home/presentation/views/widgets/book_details_view_body.dart';
import 'package:bookly_app/Features/home/controller/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(
      context,
    ).fechSimilarBooks(bookDetails: widget.bookModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BookDetailsViewBody());
  }
}
