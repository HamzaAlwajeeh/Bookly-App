import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/Features/home/controller/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_message.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookslistview extends StatelessWidget {
  const FeaturedBookslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
        builder: (context, state) {
          if (state is FeaturedBooksSuccess) {
            return ListView.builder(
              itemCount: state.books.length,
              padding: EdgeInsets.only(left: 10),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: CustomBookItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              },
            );
          } else if (state is FeaturedBooksFailure) {
            return CustomErrorMessage(erroeMessage: state.errorMessage);
          } else {
            return CustomLoadingIndecator();
          }
        },
      ),
    );
  }
}
