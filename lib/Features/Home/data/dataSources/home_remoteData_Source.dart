import 'package:product/Features/Home/data/models/bookmodels/bookmodels.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/core/utils/ApiService.dart';

abstract class HomeRemotedataSource {
  Future<List<BookEntity>> fatchFeaturedBooks();
  Future<List<BookEntity>> fatchNewesdBooks();
}

class homeRemotedataSourceImpl extends HomeRemotedataSource {
  final Apiservice apiservice;

  homeRemotedataSourceImpl(this.apiservice);
  @override
  Future<List<BookEntity>> fatchFeaturedBooks() async {
    var data =
        await apiservice.get(endpoint: 'volumes?q=programming&Filtering=free-ebooks');
    List<BookEntity> books = getbookslist(data);
    return books;
  }

  
  @override
  Future<List<BookEntity>> fatchNewesdBooks() async {
    var data = await apiservice.get(endpoint: 'volumes?q=programming&Filtering=free-ebooks&Sorting=newest');
    List<BookEntity> books = getbookslist(data);
    return books;
  }

  List<BookEntity> getbookslist(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var book in data['item']) {
      books.add(Bookmodels.fromJson(book));
    }
    return books;
  }

}
