import 'package:flutter/material.dart';
import 'package:flutter_news_app/features/constants/colors.dart';
import 'package:flutter_news_app/features/constants/text_styles.dart';

AppBar appBar() {
  return AppBar(
    backgroundColor: AppColors.appBarColors,
    title: const Text(
      'News Agregator',
      style: AppTextStyles.appBarTextStyle,
    ),
    centerTitle: false,
    actions: const [
      Icon(
        Icons.more_vert,
        color: AppColors.moreVert,
        size: 35,
      ),
    ],
  );
}
