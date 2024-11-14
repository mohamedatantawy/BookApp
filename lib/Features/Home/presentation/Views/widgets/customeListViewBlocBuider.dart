import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product/Features/Home/doman/Entities/Book_entity.dart';
import 'package:product/Features/Home/presentation/Views/widgets/CustomeListView_loading_educator.dart';
import 'package:product/Features/Home/presentation/Views/widgets/customeListView.dart';
import 'package:product/Features/Home/presentation/manager/featured_books/featured_books_cubit.dart';
import 'package:product/core/errors/failure.dart';

class CustomeListViewBlocBuilder extends StatefulWidget {
  const CustomeListViewBlocBuilder({
    super.key,
  });

  @override
  State<CustomeListViewBlocBuilder> createState() =>
      _CustomeListViewBlocBuilderState();
}

class _CustomeListViewBlocBuilderState
    extends State<CustomeListViewBlocBuilder> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
        listener: (context, state) {
      if (state is FeaturedBooksSucess) {
        books.addAll(state.books);
      }
      if (state is FeaturedBookpagnationfailure) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              state.errmassage,
              style:const TextStyle(
                color: Colors.black,
              ),
            ),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }, builder: (context, state) {
      
      if (state is FeaturedBooksSucess ||
          
          state is FeaturedBookpagnationfailure) {
        return CustomeListView(
          books: books,
        );
      } else if (state is FeaturedBooksfailure) {
        return Text(state.errmassage);
      }else if ( state is FeaturedBookpagnationloading ) 
      {
        return CustomeListView(
          books: books,
        ); 
      }
      else {
        return const CustomelistviewLoadingEducator();
      }
    });
  }
}
