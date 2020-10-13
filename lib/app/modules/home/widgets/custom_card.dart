import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String value;
  final double width;
  final double height;
  final Color background;
  final double titleSize;
  final double valueSize;

  const CustomCard(
      {Key key,
      this.width,
      this.height,
      this.background,
      this.title,
      this.value,
      this.titleSize,
      this.valueSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleSize,
                color: Colors.black54,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 10,
            child: Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: valueSize,
                color: Colors.white70,
              ),
            ),
          )
        ],
      ),
    );
  }
}
