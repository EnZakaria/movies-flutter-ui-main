import 'package:flutter/material.dart';

class MoviePageBottons extends StatelessWidget {
  const MoviePageBottons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey,
                    spreadRadius: 2,
                    blurRadius: 6,
                  ),
                ]),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 35,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey,
                    spreadRadius: 2,
                    blurRadius: 6,
                  ),
                ]),
            child: Icon(
              Icons.favorite_outline_sharp,
              color: Colors.white,
              size: 35,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey,
                    spreadRadius: 2,
                    blurRadius: 6,
                  ),
                ]),
            child: Icon(
              Icons.download,
              color: Colors.white,
              size: 35,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey,
                    spreadRadius: 2,
                    blurRadius: 6,
                  ),
                ]),
            child: Icon(
              Icons.share_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
