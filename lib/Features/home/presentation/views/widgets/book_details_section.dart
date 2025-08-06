import 'package:bookly_app/Features/Home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/details_actions.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: CustomBookItem(
              imageUrl:
                  'https://books.google.com/books/publisher/content?id=0DXYEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE71f1edlUT-qCosYq71XBuUDE7Bnx8wTul5vKR3JnUTHxgvMPKqX5j0hDWovHP2JV-tc3oSphB_OJDlK8f1vp6eNIvIc7kDZe_R7h10wYfTcHBcYzIVk9SWCchzUl7uqR_r-yqCD&source=gbs_api',
            ),
          ),
          SizedBox(height: 18),
          Text("The Jungle Book", style: Styles.textStyle30),
          SizedBox(height: 2),
          Opacity(
            opacity: 0.7,
            child: Text(
              "Rudyard Kipling",
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SizedBox(height: 10),
          BooksRating(),
          SizedBox(height: 25),
          DetailsActions(),
        ],
      ),
    );
  }
}
