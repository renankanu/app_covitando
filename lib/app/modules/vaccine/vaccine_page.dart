import 'package:appmodularmobx/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'vaccine_controller.dart';

class VaccinePage extends StatefulWidget {
  final String title;
  const VaccinePage({Key key, this.title = "Vaccine"}) : super(key: key);

  @override
  _VaccinePageState createState() => _VaccinePageState();
}

class _VaccinePageState extends ModularState<VaccinePage, VaccineController> {
  bool isPhase = true;
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Observer(builder: (_) {
      return Scaffold(
        backgroundColor: kEbonyClay,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: statusBarHeight,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                height: 46,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Vacinas',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: isPhase ? kMartinique : null,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        controller.getVaccines();
                        isPhase = true;
                      });
                    },
                    child: Text(
                      'Fase',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: !isPhase ? kMartinique : null,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        isPhase = false;
                      });
                    },
                    child: Text(
                      'Dados',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: controller.isLoading == false
                  ? ListView.builder(
                      itemCount: controller.vaccineModel.phases.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 4,
                          ),
                          child: Container(
                            color: kDanube,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.medical_services,
                                    color: Colors.white,
                                  ),
                                  Column(
                                    children: [
                                      Text(controller
                                          .vaccineModel.phases[index].phase),
                                      Text(controller.vaccineModel.phases[index]
                                          .candidates),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
            )
          ],
        ),
      );
    });
  }
}
