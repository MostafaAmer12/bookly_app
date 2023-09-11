part of 'bestseller_books_cubit.dart';

@immutable
abstract class BestsellerBooksState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class BestsellerBooksInitial extends BestsellerBooksState {}

class BestsellerBooksLoading extends BestsellerBooksState {}

class BestsellerBooksFailure extends BestsellerBooksState {
  final String errMessage;

  BestsellerBooksFailure(this.errMessage);
}

class BestsellerBooksSuccess extends BestsellerBooksState {
  final List<BookModel> books;

  BestsellerBooksSuccess(this.books);
}
