part of 'featured_books_cubit.dart';

sealed class FeaturedBooksStates extends Equatable {
  const FeaturedBooksStates();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksStates {}

final class FeaturedBooksLoading extends FeaturedBooksStates {}

final class FeaturedBooksFailure extends FeaturedBooksStates {
  final String errorMessage;

  const FeaturedBooksFailure({required this.errorMessage});
}

final class FeaturedBooksSuccess extends FeaturedBooksStates {
  final List<BookModel> books;

  const FeaturedBooksSuccess({required this.books});
}
