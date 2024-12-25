import 'package:categories_page/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CategoriesPage(),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.backgroundDark,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: AppColors.backgroundDark,
        leading: Center(
          child: SvgPicture.asset(
            "assets/svg/vector.svg",
            width: 30,
            fit: BoxFit.cover,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Categories",
          style: TextStyle(
            color: AppColors.redPinkMain,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: [
          AppBarActionItem(image: "assets/svg/notification.svg"),
          SizedBox(width: 5),
          AppBarActionItem(image: "assets/svg/search.svg"),
          SizedBox(width: 20),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(bottom: 120),
        children: [
          CategoryItemMain(image: "assets/images/seafood.png", title: "Seafood"),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(image: "assets/images/breakfast.png", title: "Breakfast"),
              CategoryItem(image: "assets/images/lunch.png", title: "Lunch"),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(image: "assets/images/dinner.png", title: "Dinner"),
              CategoryItem(image: "assets/images/vegan.png", title: "Vegan"),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(image: "assets/images/dessert.png", title: "Dessert"),
              CategoryItem(image: "assets/images/drinks.png", title: "Drinks"),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 281,
            height: 56,
            decoration: BoxDecoration(color: AppColors.redPinkMain, borderRadius: BorderRadius.circular(33)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: SvgPicture.asset("assets/svg/home.svg"),
                  onPressed: () {
                  },
                ),
                SvgPicture.asset("assets/svg/community.svg"),
                SvgPicture.asset("assets/svg/categories.svg"),
                SvgPicture.asset("assets/svg/profile.svg"),
              ],
            ),
          ),
          SizedBox(height: 35),
        ],
      ),
    );
  }
}

class CategoryItemMain extends StatelessWidget {
  const CategoryItemMain({
    super.key,
    required this.image,
    required this.title,
  });

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Image.asset(
              image,
              width: 356,
              height: 149,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.image,
    required this.title,
  });

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Image.asset(
              image,
              width: 159,
              height: 145,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}

class AppBarActionItem extends StatelessWidget {
  const AppBarActionItem({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: AppColors.pink,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: SvgPicture.asset(
          image,
          width: 12,
          height: 18,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
