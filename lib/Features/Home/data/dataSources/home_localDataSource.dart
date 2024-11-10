import 'package:hive/hive.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/constants.dart';

abstract class HomeLocaldataSource {
  List<BookEntity> fatchFeaturedBooks();
  List<BookEntity> fatchNewesdBooks();
}

class HomeLocaldatasourceImpl extends HomeLocaldataSource {
  @override
  List<BookEntity> fatchFeaturedBooks() {
    var box = Hive.box<BookEntity>(khiveFeatuerBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fatchNewesdBooks() {
    var box = Hive.box<BookEntity>(khiveNewestBox);
    return box.values.toList();
  }
}
