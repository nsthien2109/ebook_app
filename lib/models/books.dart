class Book{
  String type;
  String name;
  String author;
  String imgUrl;
  DateTime date;
  double score;
  int ratting;
  String? review;
  double height;

  Book({
    required this.type,
    required this.name,
    required this.author,
    required this.imgUrl,
    required this.date,
    required this.score,
    required this.ratting,
    this.review,
    required this.height
  });

  static List<Book> genrateBook(){
    return [
      Book(type: 'history', name: "This is the way", author: 'Is studio', imgUrl: 'assets/images/book1.jpeg', date: DateTime(2021 , 9 ,21), score: 4.0, ratting: 12,review:  'So interesting', height: 220.0),
      Book(type: 'history', name: "Your life", author: 'Is studio', imgUrl: 'assets/images/book2.jpeg', date: DateTime(2021 , 9 ,21), score: 4.7, ratting: 79,review:  'So interesting', height: 200.0),
      Book(type: 'history', name: "In the road", author: 'Is studio', imgUrl: 'assets/images/book3.jpeg', date: DateTime(2021 , 9 ,21), score: 4.5, ratting: 129,review:  'So interesting', height: 220.0),
      Book(type: 'history', name: "Country", author: 'Is studio', imgUrl: 'assets/images/book4.jpeg', date: DateTime(2021 , 9 ,21), score: 3.9, ratting: 56,review:  'So interesting', height: 200.0),
      Book(type: 'history', name: "Dream", author: 'Is studio', imgUrl: 'assets/images/book5.jpeg', date: DateTime(2021 , 9 ,21), score: 4.2, ratting: 80,review:  'So interesting', height: 200.0),
      Book(type: 'history', name: "The real love with me", author: 'Is studio', imgUrl: 'assets/images/book6.jpeg', date: DateTime(2021 , 9 ,21), score: 4.1, ratting: 900,review:  'So interesting', height: 220.0)
    ];
  }

}