import 'package:flutter/material.dart';
import 'package:movies_fire/widgets/customnavbar.dart';
import 'package:movies_fire/widgets/newmovieswidget.dart';
import 'package:movies_fire/widgets/upcomingwidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Zakaria Anouar',
                          style: TextStyle(
                            color: Color(0xffFB2576),
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'What To Watch ?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'images/user pro.png',
                        height: 90,
                        width: 90,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: 40,
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Icon(
                        Icons.search,
                        color: Colors.blueGrey,
                        size: 25,
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        margin: EdgeInsets.only(left: 10),
                        width: 300,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white60),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.blueGrey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              UpcomingWidget(),
              SizedBox(
                height: 25,
              ),
              NewMoviesWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
