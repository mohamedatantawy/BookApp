
import 'package:dartz/dartz.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/Features/Home/doman/Repos/Home_Repos.dart';
import 'package:product/core/Use_Case/UseCase.dart';
import 'package:product/core/errors/failure.dart';

class FatchNewestbookisUseCase extends UseCase<List<BookEntity>,noParam> {
  final HomeRepos homeRepos;

  FatchNewestbookisUseCase(this.homeRepos);

  @override
  Future<Either<Failure, List<BookEntity>>> call([noParam? param]) async{
    // TODO: implement call
    return  await homeRepos.fatchNewesdBooks();
  }
}

class noParam{}
