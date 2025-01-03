import 'package:hive/hive.dart';
import 'package:product/Features/Home/data/models/bookmodels/bookmodels.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/constants.dart';
import 'package:product/core/utils/ApiService.dart';
import 'package:product/core/utils/functions/SaveBooksBox.dart';

abstract class HomeRemotedataSource {
  Future<List<BookEntity>> fatchFeaturedBooks({int pagenumber = 0});
  Future<List<BookEntity>> fatchNewesdBooks({int pagenumber = 0});
}

class homeRemotedataSourceImpl extends HomeRemotedataSource {
  final Apiservice apiservice;

  homeRemotedataSourceImpl(this.apiservice);
  @override
  Future<List<BookEntity>> fatchFeaturedBooks({int pagenumber = 0}) async {
    pagenumber *= 10;

    var data = await apiservice.get(
        endpoint: 'volumes?q=programming&stratIndex=40');
    List<BookEntity> books = getbookslist(data);
    saveBooksinBox(books, khiveFeatuerBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fatchNewesdBooks({int pagenumber = 0}) async {
    var data = await apiservice.get(
        endpoint: 'volumes?q=programming&stratIndex=${pagenumber*10}');
    List<BookEntity> books = getbookslist(data);
    saveBooksinBox(books, khiveNewestBox);
    return books;
  }

  List<BookEntity> getbookslist(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var book in data['items']) {
      books.add(Bookmodels.fromJson(book));
    }
    return books;
  }
}
