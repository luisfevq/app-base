import 'package:flutter/material.dart';

class ColorsWidget extends StatelessWidget {
  const ColorsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: (size.width * .3),
          childAspectRatio: 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        padding: const EdgeInsets.all(12.0),
        children: [
          itemGrid("Background", 0xFFFFFFFF),
          itemGrid("Main", 0xFF272726),
          itemGrid("Accent | Error", 0xFFEA4335),
          itemGrid("Primary", 0xFF009B78),
          itemGrid("Secondary", 0xFFFDD807),
          itemGrid("Tretiary", 0xFF0A6C56),
          itemGrid("Gradient", 0xFF009B78, color2: 0xFF0A6C56),
          itemGrid("Icon", 0xFF787777),
          itemGrid("Inactive", 0xFFAFAFAF),
        ],
      ),
    );
  }

  Widget itemGrid(String title, int? color, {int? color2}) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(color!),
        gradient: color2 != null
            ? RadialGradient(
                colors: [
                  Color(color),
                  Color(color2),
                ],
                stops: const [0, 1],
                radius: .5,
              )
            : null,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: color == 0xFFFFFFFF ? Colors.black : Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              Color(color).toString().replaceAll("Color", ""),
              style: TextStyle(
                color: color == 0xFFFFFFFF ? Colors.black : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
