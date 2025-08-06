import 'package:bookly_app/Features/Search/data/repos/search_repo.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  final SearchRepo searchRepo;

  Future<void> fechSearchBooks({required String qurey}) async {
    emit(SearchLoading());

    var result = await searchRepo.fetchSearchBooks(query: qurey);

    result.fold(
      (failure) {
        emit(SearchFailure(errorMessage: failure.errorMessage));
      },
      (books) {
        emit(SearchSuccess(books: books));
      },
    );
  }
}
