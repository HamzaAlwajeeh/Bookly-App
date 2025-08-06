import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/Features/home/controller/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_message.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(left: 10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CustomBookItem(
                  imageUrl:
                      'https://books.google.com/books/publisher/content?id=0DXYEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE71f1edlUT-qCosYq71XBuUDE7Bnx8wTul5vKR3JnUTHxgvMPKqX5j0hDWovHP2JV-tc3oSphB_OJDlK8f1vp6eNIvIc7kDZe_R7h10wYfTcHBcYzIVk9SWCchzUl7uqR_r-yqCD&source=gbs_api',
                ),
              );
            },
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorMessage(erroeMessage: state.errorMessage);
        } else {
          return CustomLoadingIndecator();
        }
      },
    );
  }
}
