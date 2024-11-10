import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
