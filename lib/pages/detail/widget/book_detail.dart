import 'package:ebook_app/contants/colors.dart';
import 'package:ebook_app/models/books.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookDetail extends StatelessWidget {
  final Book book;
  const BookDetail(this.book ,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top: 15),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(book.type.toUpperCase(),style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange,
            letterSpacing: 1.2
            ),
          ),
          const SizedBox(height: 15,),
          Text(book.name ,style: const TextStyle(
          fontSize: 25,
          color: kFont
          ),),
          const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text.rich(TextSpan(
          children: [
          const TextSpan(
          text: 'Published from  '
          ),
          TextSpan(text: book.author,style: const TextStyle(color: kFont,fontWeight: FontWeight.bold))
          ]
          ),style: const TextStyle(fontSize: 13)),
          Text(DateFormat.yMMMd().format(book.date))
          ],
        ),
        ]
      )
    );
  }
}
