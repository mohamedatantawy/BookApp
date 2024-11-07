import 'package:product/Features/Home/doman/Entities/Book_entity.dart';

abstract class HomeRepos {
  Future<List<BookEntity>> fatchFeaturedBooks();
    Future<List<BookEntity>> fatchNewesdBooks();

}
