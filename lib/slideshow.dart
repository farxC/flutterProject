import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class SlideShow extends StatelessWidget {
  const SlideShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = PageController();
    return Column(
      children: [
        Container(
        height: 170,
        color: Colors.purple  ,
        child: PageView(
        controller: controller,
        children: [
          Image.network("https://upload.wikimedia.org/wikipedia/pt/a/aa/Bart_Simpson_200px.png"),
          Image.network("https://upload.wikimedia.org/wikipedia/pt/a/aa/Bart_Simpson_200px.png"),
          Image.network("https://upload.wikimedia.org/wikipedia/pt/a/aa/Bart_Simpson_200px.png"),
        ],
      ),
    ),
        Container(
          height: 50,
          color: Colors.pinkAccent,
          alignment: Alignment.center,
          child: SmoothPageIndicator(
            count: 3,
            controller: controller,

          ),
        ),

      ],
    );

  }


}

