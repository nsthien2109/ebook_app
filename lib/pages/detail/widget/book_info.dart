import 'package:ebook_app/contants/colors.dart';
import 'package:ebook_app/models/books.dart';
import 'package:flutter/material.dart';

class BookInfo extends StatelessWidget {
  final Book book;
  const BookInfo(this.book,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(book.score.toString(),style: const TextStyle(fontSize: 30,color: kFont,fontWeight: FontWeight.bold),),
              _buildStar()
            ],
          ),
          const SizedBox(height: 10,),
          Text(book.ratting.toString()  + ' Ratings on GooglePlay',style: const TextStyle(fontSize: 18,color: Colors.grey)),
          const SizedBox(height: 15,),
          Text(book.review!,style: const TextStyle(fontSize: 19,color: kFont)),
        ],
      ),
    );
  }

  Widget _buildStar(){
    final star = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey,
    ];
    return Row(
      children: star.map((e) => Icon(Icons.star_rounded , color: e,size: 25,)).toList(),
    );
  }
}
