import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/Features/Home/doman/user_case/fatchNewesBooks_UseCase.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fatchNewestbookisUseCase) : super(NewestBooksInitial());
  final FatchNewestbookisUseCase fatchNewestbookisUseCase;
  Future<void> fetchnewestBooks() async {
    emit(NewestBooksloading());
    var result = await fatchNewestbookisUseCase.call();
    result.fold((failure) {
      emit(NewestBooksfailure(failure.massage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
