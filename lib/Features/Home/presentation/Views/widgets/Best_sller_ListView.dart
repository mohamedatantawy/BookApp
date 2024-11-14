import 'package:flutter/material.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/Features/Home/presentation/Views/widgets/Best_seller_List_view_item.dart';

class Best_seller_listview extends StatelessWidget {
  const Best_seller_listview({super.key, this.scrollPhysics, required this.books});

  final List<BookEntity> books;
  final ScrollPhysics? scrollPhysics;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: scrollPhysics,
        itemCount:books.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding:const EdgeInsets.only(bottom: 12),
            child: BestsellerListViewItem(books: books[index],),
          );
        });
  }
}
