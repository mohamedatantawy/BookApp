import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/Features/Home/presentation/Views/widgets/Best_seller_List_view_item.dart';
import 'package:product/Features/Home/presentation/manager/cubit/newest_books_cubit.dart';

class Best_seller_listview extends StatefulWidget {
  const Best_seller_listview(
      {super.key, required this.books});

  final List<BookEntity> books;
 // final ScrollPhysics? scrollPhysics;

  @override
  State<Best_seller_listview> createState() => _Best_seller_listviewState();
}

class _Best_seller_listviewState extends State<Best_seller_listview> {
  late ScrollController _scrollController;
  int pagenaxt = 1;
  bool isloading = false;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(onscroll);
    super.initState();
  }
 @override
  void dispose() {
    _scrollController.removeListener(onscroll);
    _scrollController.dispose();
    super.dispose();
  }

  void onscroll() async {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.7) {
      if (!isloading) {
        isloading = true;
        await BlocProvider.of<NewestBooksCubit>(context).fetchnewestBooks(
        pagenumber: pagenaxt++
        );
        isloading = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        //physics: widget.scrollPhysics,
        itemCount: widget.books.length,
        controller: _scrollController,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: BestsellerListViewItem(
              books: widget.books[index],
            ),
          );
        });
  }
}
