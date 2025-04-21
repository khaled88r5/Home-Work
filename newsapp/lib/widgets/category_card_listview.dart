import 'package:flutter/material.dart';
import 'package:newsapp/constants/assets.dart';
import 'package:newsapp/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });
  final List<category_card> categories = [
    category_card(
      image: Assets.assetsBusiness,
      name: 'Business',
    ),
    category_card(
      image: Assets.assetsEntertaiment,
      name: 'Entertainment',
    ),
    category_card(
      image: Assets.assetsHealth,
      name: 'Health',
    ),
    category_card(
      image: Assets.assetsScience,
      name: 'Science',
    ),
    category_card(
      image: Assets.assetsTechnology,
      name: 'Technology',
    ),
    category_card(
      image: Assets.assetsSports,
      name: 'Sports',
    ),
    category_card(
      image: Assets.assetsGeneral,
      name: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return categories[index];
        },
      ),
    );
  }
}
