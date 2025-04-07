import 'package:flutter/material.dart';
import 'package:flutter_news_app/features/constants/colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Color(0xffffd4cc),
            spreadRadius: -2,
            offset: Offset(5, 10),
          ),
        ],
      ),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: AppColors.searchColor,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 45,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
