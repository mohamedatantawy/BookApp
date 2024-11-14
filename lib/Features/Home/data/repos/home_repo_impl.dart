import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
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
  Future<Either<Failure, List<BookEntity>>> fatchFeaturedBooks({int pagenumber =0}) async {
    try {
      List<BookEntity> books;
      books = homeLocaldataSource.fatchFeaturedBooks(
        pagenumber: pagenumber
      );
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemotedataSource.fatchFeaturedBooks(
        pagenumber: pagenumber
      );
      return right(books);
    } catch (e) {
       if (e is DioException) {
        return left(ServerFailure.Errormassage(e));
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fatchNewesdBooks({int pagenumber=0}) async {
    try {
      List<BookEntity> books;
      books = homeLocaldataSource.fatchNewesdBooks(pagenumber: pagenumber);
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemotedataSource.fatchNewesdBooks(pagenumber: pagenumber);
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.Errormassage(e));
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }
}
