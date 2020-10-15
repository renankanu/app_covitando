import 'package:appmodularmobx/app/modules/vaccine/widgets/data_widget.dart';
import 'package:appmodularmobx/app/modules/vaccine/widgets/phase_widget.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
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
            if (isPhase)
              PhaseWidget(
                controller: controller,
              ),
            if (!isPhase)
              DataWidget(
                controller: controller,
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Fonte: ${controller.isLoading == false ? controller.vaccineModel.source : '...'}',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Total de candidatos: ${controller.isLoading == false ? controller.vaccineModel.totalCandidates : 0}',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom,
            )
          ],
        ),
      );
    });
  }
}
