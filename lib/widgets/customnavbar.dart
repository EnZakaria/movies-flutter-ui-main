import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              // Navigate to home page
              Navigator.pushNamed(context, "/");
            },
            child: Icon(
              Icons.home,
              color: Colors.blueGrey,
              size: 35,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "categoryPage");
            },
            child: Icon(
              Icons.category_outlined,
              size: 35,
              color: Colors.blueGrey,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.popAndPushNamed(context, "FavouritePage");
            },
            child: Icon(
              Icons.favorite,
              size: 35,
              color: Colors.blueGrey,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.person_add,
              size: 35,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
