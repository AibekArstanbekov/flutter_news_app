import 'package:dio/dio.dart';
import 'package:flutter_news_app/features/data/api.dart';
import 'package:flutter_news_app/features/model/news_model.dart';

class NewsService {
  final Dio dio = Dio();

  Future<NewsModel?> fetchData() async {
    final responce = await dio.get(Api.data);
    if (responce.statusCode == 200 || responce.statusCode == 201) {
      final data = responce.data;
      return NewsModel.fromJson(data);
    }
    return null;
  }
}
