import 'package:dartz/dartz.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/core/errors/failure.dart';

abstract class HomeRepos {
  Future<Either< Failure,List<BookEntity>>> fatchFeaturedBooks();
    Future<Either<Failure,List<BookEntity>>> fatchNewesdBooks();
  
}
