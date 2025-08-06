import 'package:bookly_app/Features/Search/controller/earch_cubit/search_cubit.dart';
import 'package:bookly_app/Features/Search/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly_app/Features/Search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  String? query;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              onChanged: (value) {
                setState(() {
                  query = value;
                });
              },
              onPressed: () {
                BlocProvider.of<SearchCubit>(
                  context,
                ).fechSearchBooks(qurey: query ?? 'Not Found');
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Search Results',
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(child: SearchResultListView()),
          ],
        ),
      ),
    );
  }
}
