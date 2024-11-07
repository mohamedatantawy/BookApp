import 'package:dartz/dartz.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/Features/Home/doman/Repos/Home_Repos.dart';
import 'package:product/core/errors/failure.dart';

class FatchfeaturedbookisUseCase {
  final HomeRepos homeRepos;

  FatchfeaturedbookisUseCase(this.homeRepos);
  Future<Either<Failure, List<BookEntity>>> fatchFeaturedBooks() {
    return homeRepos.fatchFeaturedBooks();
  }
}
