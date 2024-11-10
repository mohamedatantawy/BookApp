
  import 'package:hive/hive.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';

void saveBooksinBox(List<BookEntity> books,String name) {
     var box = Hive.box(name);
    box.addAll(books);
  }