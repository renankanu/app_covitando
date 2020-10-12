import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String value;
  final double width;
  final double height;
  final Colors background;

  const CustomCard(
      {Key key,
      this.width,
      this.height,
      this.background,
      this.title,
      this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: Text(title),
    );
  }
}
