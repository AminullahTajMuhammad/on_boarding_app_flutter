import 'package:flutter/material.dart';
import 'page_view_pages.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StartState();
  }
}

class StartState extends State<OnBoardingScreen> {
  int _pagesLength;
  int _currentPage;

  @override
  void initState() {
    _pagesLength = 3;
    _currentPage = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            PageView(
              scrollDirection: Axis.horizontal,
              onPageChanged: (value) {
                setState(() => _currentPage = value);
              },
              children: <Widget>[
                Pages("Big Text 1", "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum", "images/faiz_mahal.jpg"),
                Pages("Big Text 2", "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum", "images/faiz_mahal.jpg"),
                Pages("Big Text 3", "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum", "images/faiz_mahal.jpg"),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 35),
                  child: DotsIndicator(
                    dotsCount: _pagesLength,
                    position: _currentPage,
                  ),
                ),
              ],
            ),
            // DotIndicators
            // Floating Action Button
          ],
        ),
      ),
    );
  }

}