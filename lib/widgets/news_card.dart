import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_app/features/constants/text_styles.dart';
import 'package:flutter_news_app/features/model/news_model.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.index,
    required this.data,
  });
  final int index;
  final List<Articles>? data;

  @override
  Widget build(BuildContext context) {
    final news = data?[index];

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.black),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Row(
            children: [
              SizedBox(
                height: 130,
                width: 130,
                child: CachedNetworkImage(
                  imageUrl: news?.urlToImage ?? "",
                  placeholder: (context, url) =>
                      const CircularProgressIndicator.adaptive(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        news?.publishedAt != null
                            ? DateFormat.yMMMEd().add_jm().format(
                                  DateTime.parse(news!.publishedAt!),
                                )
                            : 'No Date',
                        style: AppTextStyles.newsTextStyle,
                      ),
                      Text(
                        news?.title ?? "No Title",
                        style: AppTextStyles.newsTextStyle,
                      ),
                      TextButton(
                        onPressed: () async {
                          final url = news?.url;
                          if (url != null) {
                            final uri = Uri.tryParse(url);
                            if (uri != null) {
                              await launchUrl(uri);
                            } else {
                              print('invalid url: $url');
                            }
                          } else {
                            print('No url provided');
                          }
                        },
                        child: Text(
                          news?.url ?? "No Url",
                          style: AppTextStyles.newsTextStyle
                              .copyWith(color: Colors.blue),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
