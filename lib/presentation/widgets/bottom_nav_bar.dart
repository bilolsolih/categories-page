import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: BottomNavBarShadow(),
        ),
        Positioned(
          bottom: 35,
          child: BottomNavBarVanilla(),
        ),
      ],
    );
  }
}

class BottomNavBarVanilla extends StatelessWidget {
  const BottomNavBarVanilla({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 281,
      height: 56,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppConstants.mainColor,
        borderRadius: BorderRadius.circular(33),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavBarItem(image: "assets/icons/home.svg"),
          BottomNavBarItem(image: "assets/icons/community.svg"),
          BottomNavBarItem(image: "assets/icons/categories.svg"),
          BottomNavBarItem(image: "assets/icons/profile.svg"),
        ],
      ),
    );
  }
}


class BottomNavBarShadow extends StatelessWidget {
  const BottomNavBarShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(1), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
    );
  }
}

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
      width: 27,
      height: 27,
      fit: BoxFit.cover,
    );
  }
}
