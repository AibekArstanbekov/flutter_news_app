import 'package:flutter/material.dart';
import 'package:flutter_news_app/features/constants/colors.dart';
import 'package:flutter_news_app/features/data/service.dart';
import 'package:flutter_news_app/features/model/news_model.dart';
import 'package:flutter_news_app/methode/my_app_bar.dart';
import 'package:flutter_news_app/widgets/news_card.dart';
import 'package:flutter_news_app/widgets/search_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgrColor,
      appBar: appBar(),
      body: FutureBuilder<NewsModel?>(
        future: NewsService().fetchData(),
        builder: (BuildContext context, AsyncSnapshot<NewsModel?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator.adaptive());
          } else if (snapshot.connectionState == ConnectionState.none) {
            return const Center(
              child: Text('Server is running'),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            return RefreshIndicator(
              onRefresh: () async {
                NewsModel();
                setState(() {});
              },
              child: ListView.builder(
                itemCount: snapshot.data!.articles!.length,
                itemBuilder: (context, index) {
                  final data = snapshot.data!.articles;
                  return NewsCard(
                    index: index,
                    data: data,
                  );
                },
              ),
            );
          } else {
            return const Center(
              child: Text('Unknown error'),
            );
          }
        },
      ),
      floatingActionButton: const SearchWidget(),
    );
  }
}
