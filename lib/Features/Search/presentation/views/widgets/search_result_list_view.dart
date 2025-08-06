import 'package:bookly_app/Features/Search/controller/earch_cubit/search_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_message.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                // child: BestSellerListViewItem(),
                child: NewestBooksListViewItem(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is SearchFailure) {
          return CustomErrorMessage(erroeMessage: state.errorMessage);
        } else if (state is SearchInitial) {
          return const CustomErrorMessage(erroeMessage: 'Search Books');
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
