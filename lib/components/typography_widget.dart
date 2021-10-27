import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TypographyWidget extends StatelessWidget {
  const TypographyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8.0),
      children: const [
        Text(
          "H1 Head",
          style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 96,
            letterSpacing: -1.5,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "H2 Headline",
          style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 60,
            letterSpacing: -0.5,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "H3 Headline",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 48,
            letterSpacing: 0,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "H4 Headline",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 34,
            letterSpacing: 0.25,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "H5 Headline",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 24,
            letterSpacing: 0,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "H6 Headline",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            letterSpacing: 0.15,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Body 1",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            letterSpacing: 0.5,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Subtitle 2",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            letterSpacing: 0.1,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "BUTTON",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            letterSpacing: 1.25,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Body 2",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            letterSpacing: 0.25,
          ),
        ),
      ],
    );
  }
}
