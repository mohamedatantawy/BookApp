import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/Features/Home/doman/user_case/fatchFeaturedBookis_use_case.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.fatchfeaturedbookisUseCase)
      : super(FeaturedBooksInitial());
  final FatchfeaturedbookisUseCase fatchfeaturedbookisUseCase;
  Future<void> fetchfeaturedbooks() async {
    emit(FeaturedBookloading());
    var result = await fatchfeaturedbookisUseCase.call();
    result.fold((failure) {
      emit(FeaturedBooksfailure(failure.massage));
    }, (books) {
      emit(FeaturedBooksSucess(books));
    });
  }
}
