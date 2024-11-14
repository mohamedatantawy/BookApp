
import 'package:dartz/dartz.dart';
import 'package:product/core/errors/failure.dart';

abstract class UseCase<Type,int > {
  Future<Either<Failure, Type>> call([int  param]);
}