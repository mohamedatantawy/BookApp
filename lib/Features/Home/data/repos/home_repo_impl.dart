import 'package:dartz/dartz.dart';
import 'package:product/Features/Home/data/dataSources/home_localDataSource.dart';
import 'package:product/Features/Home/data/dataSources/home_remoteData_Source.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/Features/Home/doman/Repos/Home_Repos.dart';
import 'package:product/core/errors/failure.dart';

class HomeRepoImpl extends HomeRepos {
  final HomeRemotedataSource homeRemotedataSource;
  final HomeLocaldataSource homeLocaldataSource;

  HomeRepoImpl(
      {required this.homeRemotedataSource, required this.homeLocaldataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fatchFeaturedBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocaldataSource.fatchFeaturedBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemotedataSource.fatchFeaturedBooks();
      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fatchNewesdBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocaldataSource.fatchNewesdBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemotedataSource.fatchNewesdBooks();
      return right(books);
    } on Exception catch (e) {
      return left(Failure());
    }
  }
}
