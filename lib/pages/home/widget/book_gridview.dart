import 'package:ebook_app/models/books.dart';
import 'package:ebook_app/pages/home/widget/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BookGridView extends StatelessWidget {
  final int selected;
  final PageController pageController;
  final Function callback;


  BookGridView({required this.selected,required this.pageController,required this.callback});
  final bookList = Book.genrateBook();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: [
          StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: bookList.length,
              itemBuilder: (_,index) => BookItem(bookList[index]),
              staggeredTileBuilder: (_) => const StaggeredTile.fit(2)
          ),
          Container()
        ],
      ),
    );
  }
}
