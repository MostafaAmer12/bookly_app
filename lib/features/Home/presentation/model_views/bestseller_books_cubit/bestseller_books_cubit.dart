import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
part 'bestseller_books_state.dart';

class BestsellerBooksCubit extends Cubit<BestsellerBooksState> {
  BestsellerBooksCubit(this.homeRepo) : super(BestsellerBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchBestSellerBooks() async {
    emit(BestsellerBooksLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold((failure) {
      emit(BestsellerBooksFailure(failure.errorMsg));
    }, (books) {
      emit(BestsellerBooksSuccess(books));
    });
  }
}
