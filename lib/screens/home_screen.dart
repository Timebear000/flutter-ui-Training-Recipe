import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipes/components/bottoom_navi_bar.dart';
import 'package:recipes/components/pageview_recipe_list.dart';
import 'package:recipes/components/popular_recipe_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7EEFB),
      body: SafeArea(
        child: ListView(
          primary: true,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.5, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recipes',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 36,
                    child: SvgPicture.asset(
                      'assets/svg/icon-nav.svg',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.53),
            PageViewRecipeList(),
            SizedBox(height: 42.52),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                children: [
                  SvgPicture.asset('assets/svg/icon-popular.svg'),
                  SizedBox(width: 4.26),
                  Text('Popular',
                      style: TextStyle(fontSize: 20, color: Color(0xffFAAE89))),
                ],
              ),
            ),
            SizedBox(height: 16),
            PopularRecipeList(),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
