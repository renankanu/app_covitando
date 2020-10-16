import 'package:appmodularmobx/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../vaccine_controller.dart';

class PhaseWidget extends StatelessWidget {
  const PhaseWidget({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final VaccineController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: controller.isLoading == false
          ? ListView.builder(
              itemCount: controller.vaccineModel.phases.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: kDanube,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/testTube.svg',
                            height: 26,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(controller
                                    .vaccineModel.phases[index].phase),
                                Text(controller
                                    .vaccineModel.phases[index].candidates),
                              ],
                            ),
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
    );
  }
}
