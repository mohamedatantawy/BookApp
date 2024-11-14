import 'package:hive/hive.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/constants.dart';

abstract class HomeLocaldataSource {
  List<BookEntity> fatchFeaturedBooks({int pagenumber = 0});
  List<BookEntity> fatchNewesdBooks();
}

class HomeLocaldatasourceImpl extends HomeLocaldataSource {
  @override
  List<BookEntity> fatchFeaturedBooks({int pagenumber = 0}) {
    int stratindex = pagenumber * 10;
    int endindex = (pagenumber + 1) * 10;

    var box = Hive.box<BookEntity>(khiveFeatuerBox);
    
    int length = box.values.length ;
    if (stratindex >= length || endindex > length) {
      return [];
    }
    return box.values.toList().sublist(stratindex, endindex);
  }

  @override
  List<BookEntity> fatchNewesdBooks() {
    var box = Hive.box<BookEntity>(khiveNewestBox);
    return box.values.toList();
  }
}
