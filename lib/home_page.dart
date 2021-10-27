import 'package:app_base/components/colors_widget.dart';
import 'package:app_base/components/typography_widget.dart';
import 'package:app_base/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF009B78),
        title: const Text("Spread Components"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            itemList(
              context,
              title: "Typography",
              body: const TypographyWidget(),
            ),
            itemList(
              context,
              title: "Colors",
              body: const ColorsWidget(),
            ),
            itemList(
              context,
              title: "Bars",
            ),
            itemList(
              context,
              title: "Buttons",
            ),
            itemList(
              context,
              title: "Form Controls",
            ),
            itemList(
              context,
              title: "Cards",
            ),
          ],
        ),
      ),
    );
  }

  Widget itemList(BuildContext context, {String? title, Widget? body}) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => NavigatorPage(
                title: title,
                body: body,
              ),
            ),
          );
        },
        title: Text(
          title!,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios_sharp),
      ),
    );
  }
}
