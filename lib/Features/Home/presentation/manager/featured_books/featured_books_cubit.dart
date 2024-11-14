import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/Features/Home/doman/user_case/fatchFeaturedBookis_use_case.dart';
import 'package:product/core/errors/failure.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.fatchfeaturedbookisUseCase)
      : super(FeaturedBooksInitial());
  final FatchfeaturedbookisUseCase fatchfeaturedbookisUseCase;
  Future<void> fetchfeaturedbooks({int pagenumbera = 0}) async {
   
    if (pagenumbera == 0) {
      emit(FeaturedBookloading());
      // emit(FeaturedBookloading());
    } else {
      emit(FeaturedBookpagnationloading());
    }
    Either<Failure, List<BookEntity>> result =
        await fatchfeaturedbookisUseCase.call(pagenumbera);
    result.fold((failure) {
      if (pagenumbera == 0) {
        emit(FeaturedBooksfailure(failure.massage));
      } else {
        emit(FeaturedBookpagnationfailure(failure.massage));
      }
    }, (books) {
      emit(FeaturedBooksSucess(books));
    });
  }
}
