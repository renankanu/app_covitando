import 'package:appmodularmobx/app/modules/home/widgets/custom_card.dart';
import 'package:appmodularmobx/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

String formatDate(timestamp) {
  var date = new DateTime.fromMillisecondsSinceEpoch(timestamp);
  return DateFormat('dd/MM/yyyy – kk:mm').format(date);
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
    ));

    return Observer(builder: (_) {
      return Scaffold(
        backgroundColor: kEbonyClay,
        body: SafeArea(
          child: controller.isLoading == false
              ? Column(
                  children: <Widget>[
                    SizedBox(
                      height: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller.getInfoMundo();
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Reload',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Icon(
                                  Icons.replay,
                                  size: 26,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Modular.to.pushNamed('/vaccine');
                            },
                            child: Row(
                              children: [
                                Text(
                                  'Vacinas',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/images/vaccine.svg',
                                  width: 30,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
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
                                Text(
                                    "Ultima atualização: ${formatDate(controller.worldModel.updated)}"),
                              ],
                            ),
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
                          title: 'Casos',
                          value: '${controller.worldModel.cases}',
                          width: width * 0.45,
                          height: height * 0.15,
                          background: kDeYork,
                          titleSize: 14,
                          valueSize: 36,
                        ),
                        CustomCard(
                          title: 'Mortes',
                          value: '${controller.worldModel.deaths}',
                          width: width * 0.45,
                          height: height * 0.15,
                          background: kChestnutRose,
                          titleSize: 14,
                          valueSize: 36,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomCard(
                          title: 'Casos Hoje',
                          value: '${controller.worldModel.todayCases}',
                          width: width * 0.28,
                          height: height * 0.15,
                          background: kDanube,
                          titleSize: 14,
                          valueSize: 24,
                        ),
                        CustomCard(
                          title: 'Mortes Hoje',
                          value: '${controller.worldModel.todayDeaths}',
                          width: width * 0.28,
                          height: height * 0.15,
                          background: kDiSerria,
                          titleSize: 14,
                          valueSize: 24,
                        ),
                        CustomCard(
                          title: 'Recuperados Hoje',
                          value: '${controller.worldModel.todayRecovered}',
                          width: width * 0.28,
                          height: height * 0.15,
                          background: kHalfBaked,
                          titleSize: 14,
                          valueSize: 24,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomCard(
                          title: 'Ativos',
                          value: '${controller.worldModel.active}',
                          width: width * 0.45,
                          height: height * 0.15,
                          background: kChestnutRose,
                          titleSize: 14,
                          valueSize: 36,
                        ),
                        CustomCard(
                          title: 'Criticos',
                          value: '${controller.worldModel.critical}',
                          width: width * 0.45,
                          height: height * 0.15,
                          background: kDiSerria,
                          titleSize: 14,
                          valueSize: 36,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: CustomCard(
                        title: 'Testes Aplicados',
                        value: '${controller.worldModel.tests}',
                        width: width,
                        height: height * 0.15,
                        background: kDiSerria,
                        titleSize: 14,
                        valueSize: 36,
                      ),
                    ),
                  ],
                )
              : Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ),
        ),
      );
    });
  }
}
