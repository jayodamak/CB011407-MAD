import 'package:final01/components/category_list.dart';
import 'package:final01/components/popular_list.dart';
import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';
import '../components/categories_items.dart';
import '../components/screen_1.dart';
import '../components/screen_2.dart';
import '../components/screen_3.dart';
import '../components/screen_4.dart';
import '../components/search_box.dart';
import '../pages/about_us_page.dart';
import '../pages/cart_page.dart';
import '../pages/feedback_page.dart';
import '../pages/login_page.dart';
import '../pages/privacy_policy_page.dart';
import 'favourite_page.dart';
import 'settings_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;



  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade800,


      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchBox(),
            const SizedBox(height: 30,),

            Container(
              height: 185, // Set a fixed height for the PageView
              child: PageView(
                controller: _controller,
                children: const [
                  Screen1(),
                  Screen2(),
                  Screen3(),
                  Screen4(),
                ],
              ),
            ),

            const SizedBox(height: 15,),
            const Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10,),

            const CategoryList(),
            const SizedBox(height: 30,),

            Container(
              decoration: BoxDecoration(
                color: Colors.yellow[50],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const PopularList(),
            ),
          ],
        ),
      ),
    );
  }
}
