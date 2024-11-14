import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/Features/Home/presentation/Views/widgets/Best_sller_ListView.dart';
import 'package:product/Features/Home/presentation/Views/widgets/bestSellerListview_loadingeducator.dart';
import 'package:product/Features/Home/presentation/manager/cubit/newest_books_cubit.dart';
import 'package:product/core/errors/failure.dart';

class Best_seller_listViewBlocConsumer extends StatefulWidget {
  const Best_seller_listViewBlocConsumer({
    super.key,
  });

  @override
  State<Best_seller_listViewBlocConsumer> createState() =>
      _Best_seller_listViewBlocConsumerState();
}

class _Best_seller_listViewBlocConsumerState
    extends State<Best_seller_listViewBlocConsumer> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewestBooksCubit, NewestBooksState>(
        listener: (context, state) {
      if (state is NewestBooksSuccess) {
        books.addAll(state.books);
      }
    }, builder: (context, state) {
     
      if (state is NewestBooksSuccess  ) {
        return Best_seller_listview(
          books: books,
          scrollPhysics: const NeverScrollableScrollPhysics(),
        );
      } else if (state is NewestBooksfailure) {
        return Text(state.errmassage);
      } else {
        return const BestsellerlistviewLoadingeducator();
      }
    });
  }
}
