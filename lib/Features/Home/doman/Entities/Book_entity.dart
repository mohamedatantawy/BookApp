import 'package:hive/hive.dart';
part 'Book_entity.g.dart';
@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String BookId;
  @HiveField(1)
  final String? image;
  @HiveField(2)
  final String Bookname;
  @HiveField(3)
  final String? authorname;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final num? rating;

  BookEntity(
      {required this.BookId,
      required this.image,
      required this.Bookname,
      required this.authorname,
      required this.price,
      required this.rating});
}
