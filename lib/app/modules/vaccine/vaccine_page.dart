import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'vaccine_controller.dart';

class VaccinePage extends StatefulWidget {
  final String title;
  const VaccinePage({Key key, this.title = "Vaccine"}) : super(key: key);

  @override
  _VaccinePageState createState() => _VaccinePageState();
}

class _VaccinePageState extends ModularState<VaccinePage, VaccineController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
              onPressed: () {
                controller.getVaccines();
              },
              child: Text('click me'))
        ],
      ),
    );
  }
}
