part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBookloading extends FeaturedBooksState {}

final class FeaturedBookpagnationloading extends FeaturedBooksState {}

final class FeaturedBookpagnationfailure extends FeaturedBooksState {
  final String errmassage;

  FeaturedBookpagnationfailure(this.errmassage);

}

final class FeaturedBooksfailure extends FeaturedBooksState {
  final String errmassage;

  FeaturedBooksfailure(this.errmassage);
}

final class FeaturedBooksSucess extends FeaturedBooksState {
  final List<BookEntity> books;

  FeaturedBooksSucess(this.books);
}
