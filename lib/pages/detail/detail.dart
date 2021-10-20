import 'package:ebook_app/contants/colors.dart';
import 'package:ebook_app/models/books.dart';
import 'package:ebook_app/pages/detail/widget/book_cover.dart';
import 'package:ebook_app/pages/detail/widget/book_detail.dart';
import 'package:ebook_app/pages/detail/widget/book_info.dart';
import 'package:flutter/material.dart';

class DetailBook extends StatelessWidget {

  final Book book;
  const DetailBook(this.book,{Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_rounded,color: kFont,)),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz_rounded,color: kFont,))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 15),
        child: Column(
          children :[
            BookDetail(book),
            BookCover(book),
            BookInfo(book),
          ],
        ),
      ),
    );
  }
}
