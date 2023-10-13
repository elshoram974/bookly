import 'package:bookly/core/utils/constants/app_constants.dart';
import 'package:bookly/features/home/domain/entities/home_entity.dart';
import 'package:bookly/features/home/presentation/cubit/fetch_featured_books_cubit/fetch_featured_books_cubit.dart';
import 'package:bookly/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'bookly_item/book_photo.dart';

class BooklyHorizontalList extends StatelessWidget {
  const BooklyHorizontalList({
    super.key,
    required this.books,
    this.isLoading = false,
  });
  final List<HomeBooksEntity> books;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.2759 * MediaQuery.sizeOf(context).height,
      child: ListView(
        controller: BlocProvider.of<FetchFeaturedBooksCubit>(context).controller ,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 1.5 * AppConstants.defaultPadding,
        ),
        children: [
          ...List.generate(
            books.length,
            (index) {
              HomeBooksEntity book = books[index];
              return Padding(
                padding: const EdgeInsets.only(
                  right: 0.75 * AppConstants.defaultPadding,
                ),
                child: BookPhoto(
                  book: book,
                  onTap: () =>
                      context.push(AppRoute.detailsScreen, extra: book),
                ),
              );
            },
          ),
          if (isLoading)
            Container(
              width: 100,
              alignment: Alignment.center,
              child: const CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }
}
