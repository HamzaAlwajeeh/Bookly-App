import 'package:bookly_app/Features/home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fechSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());

    var result = await homeRepo.fetchSimilarBooks(category: category);

    result.fold(
      (failure) {
        return left(
          emit(SimilarBooksFailure(errorMessage: failure.errorMessage)),
        );
      },
      (books) {
        return right(emit(SimilarBooksSuccess(books: books)));
      },
    );
  }
}
