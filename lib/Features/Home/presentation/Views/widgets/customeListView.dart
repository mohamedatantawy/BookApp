import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/Features/Home/presentation/Views/widgets/customeListViewItem.dart';
import 'package:product/Features/Home/presentation/manager/featured_books/featured_books_cubit.dart';

class CustomeListView extends StatefulWidget {
  const CustomeListView({
    super.key,
    required this.books,
  });

  final List<BookEntity> books;

  @override
  _CustomeListViewState createState() => _CustomeListViewState();
}

class _CustomeListViewState extends State<CustomeListView> {
  late ScrollController _scrollController;
  int pagenumber = 1;
  bool isloading = false;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() async {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.7) {
      if (!isloading) {
        isloading = true;
        await BlocProvider.of<FeaturedBooksCubit>(context).fetchfeaturedbooks(
          pagenumbera: pagenumber++,
        );

        isloading = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: widget.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: FeatureListViewItem(
                image: widget.books[index].image ?? '',
              ),
            );
          },
        ),
      ),
    );
  }
}
