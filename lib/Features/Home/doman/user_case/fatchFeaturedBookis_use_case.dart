import 'package:dartz/dartz.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/Features/Home/doman/Repos/Home_Repos.dart';
import 'package:product/core/Use_Case/UseCase.dart';
import 'package:product/core/errors/failure.dart';

class FatchfeaturedbookisUseCase extends UseCase<List<BookEntity>,int > {
  final HomeRepos homeRepos;

  FatchfeaturedbookisUseCase(this.homeRepos);

  @override
  Future<Either<Failure, List<BookEntity>>> call( [param =0] ) async{
    // TODO: implement call
    return  await homeRepos.fatchFeaturedBooks(
      pagenumber: param,
    );
  }
}

class noParam{}
