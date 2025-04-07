class News {
  const News({
    required this.image,
    required this.date,
    required this.text,
  });
  final String image;
  final String date;
  final String text;
}

News news1 = const News(
  image: 'assets/1.png',
  date: '1 Feb, 2020',
  text:
      'Amet minim mollit non deserunt \nullamco est sit aliqua dolor do amet sint.\nVelit officia consequat duis enim velit mollit.',
);

News news2 = const News(
  image: 'assets/2.png',
  date: '3 Feb, 2020',
  text:
      'Aliqua id fugiat nostrud irure ex duis \nea quis id quis ad et.\nSunt qui esse pariatur duis deserunt mollit',
);

News news3 = const News(
  image: 'assets/3.png',
  date: '4 Feb, 2020',
  text:
      'Aliqua id fugiat nostrud irure \nex duis ea quis id quis ad et.\nSunt qui esse pariatur duis deserunt mollit',
);
News news4 = const News(
  image: 'assets/4.png',
  date: '6 Feb, 2020',
  text:
      'Amet minim mollit non deserunt \nullamco est sit aliqua dolor do amet sint.\nVelit officia consequat duis enim velit mollit.',
);
News news5 = const News(
  image: 'assets/5.png',
  date: '3 Feb, 2020',
  text:
      'Amet minim mollit non deserunt.\nullamco est sit aliqua dolor do amet sint.\nVelit officia consequat duis enim velit mollit.',
);
News news6 = const News(
  image: 'assets/5.png',
  date: '3 Feb, 2020',
  text:
      'Amet minim mollit non deserunt.\nullamco est sit aliqua dolor do amet sint.\nVelit officia consequat duis enim velit mollit.',
);
News news7 = const News(
  image: 'assets/4.png',
  date: '6 Feb, 2020',
  text:
      'Amet minim mollit non deserunt \nullamco est sit aliqua dolor do amet sint.\nVelit officia consequat duis enim velit mollit.',
);

final List<News> newsList = [
  news1,
  news2,
  news3,
  news4,
  news5,
  news6,
  news7,
];
