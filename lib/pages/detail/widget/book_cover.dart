import 'package:ebook_app/contants/colors.dart';
import 'package:ebook_app/models/books.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  final Book book;
  const BookCover(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.only(left: 20),
      height: 250,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 40),
            width: MediaQuery.of(context).size.width - 20,
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(20) , bottomLeft: Radius.circular(20)),
              color: Colors.grey[200]
            ),
            child: ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20) , bottomLeft: Radius.circular(20)),
              child: Image.asset(book.imgUrl,fit: BoxFit.cover, ),
            ),
          ),
          Positioned(
            bottom: 15,
              right: 135,
              child: Container(
                padding: const EdgeInsets.all(9),
                decoration:  BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10)
                  
                ),
                child: const Icon(Icons.info_outline_rounded ,color: Colors.white,),
          )),
          Positioned(
              bottom: 15,
              right: 20,
              child: Container(
                padding: const EdgeInsets.all(9),
                decoration:  BoxDecoration(
                    color: kFont,
                    borderRadius: BorderRadius.circular(10)

                ),
                child: Row(
                  children: const [
                    Icon(Icons.play_arrow_outlined ,color: Colors.white,),
                    SizedBox(width: 5,),
                    Text("Audio Book",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
