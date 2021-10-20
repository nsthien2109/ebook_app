import 'package:ebook_app/models/books.dart';
import 'package:ebook_app/pages/detail/detail.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final Book book;
  const BookItem(this.book , {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => DetailBook(book))),
      child: Container(
        height: book.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(book.imgUrl),
              fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}
