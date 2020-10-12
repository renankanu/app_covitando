import 'package:appmodularmobx/app/modules/home/widgets/custom_card.dart';
import 'package:appmodularmobx/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: kEbonyClay,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Icon(
                  Icons.replay,
                  size: 26,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Info: Mundo"),
                        Text("Ultima atualização: 10/09/2020"),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Text('Escolher País'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                    title: 'Cases',
                    value: '108',
                    width: width * 0.45,
                    height: height * 0.15,
                    background: kDeYork),
                CustomCard(
                  title: 'Cases',
                  value: '108',
                  width: width * 0.45,
                  height: height * 0.15,
                  background: kChestnutRose,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
