import 'package:bookly_app/core/errors/errors.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturesBooks();

  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category});
}
