import 'package:appmodularmobx/app/utils/constants.dart';
import 'package:flutter/material.dart';

import '../vaccine_controller.dart';

class DataWidget extends StatelessWidget {
  final VaccineController controller;

  const DataWidget({Key key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: controller.isLoading == false
          ? ListView.builder(
              itemCount: controller.vaccineModel.data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: kDeYork,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.medical_services_sharp,
                            color: Colors.white,
                          ),
                          Flexible(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(controller
                                      .vaccineModel.data[index].candidate),
                                  Text(controller
                                      .vaccineModel.data[index].mechanism),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              })
          : Container(),
    );
  }
}
