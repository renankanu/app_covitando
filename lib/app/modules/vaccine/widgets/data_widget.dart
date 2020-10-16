import 'package:appmodularmobx/app/models/vaccine_model.dart';
import 'package:appmodularmobx/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../vaccine_controller.dart';

class DataWidget extends StatefulWidget {
  final VaccineController controller;

  const DataWidget({Key key, this.controller}) : super(key: key);

  @override
  _DataWidgetState createState() => _DataWidgetState();
}

class _DataWidgetState extends State<DataWidget>
    with TickerProviderStateMixin<DataWidget> {
  void _openModalSheetDetails(
      BuildContext context, VaccineModel vaccineModel, int index) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext builderContext) {
          return Container(
            decoration: BoxDecoration(
              color: kMartinique,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Detalhes da Vacina',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: SvgPicture.asset(
                          'assets/images/downArrow.svg',
                          height: 16,
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    top: 32,
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Candidato: ${vaccineModel.data[index].candidate}',
                            style: TextStyle(color: Colors.white60),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Mecanismo: ${vaccineModel.data[index].mechanism}',
                            style: TextStyle(color: Colors.white60),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Patrocinadores: ${vaccineModel.data[index].sponsors[0]}',
                            style: TextStyle(color: Colors.white60),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Detalhes: ${vaccineModel.data[index].details}',
                            style: TextStyle(color: Colors.white60),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Fase de teste: ${vaccineModel.data[index].trialPhase}',
                            style: TextStyle(color: Colors.white60),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Instituições: ${vaccineModel.data[index].institutions}',
                            style: TextStyle(color: Colors.white60),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: widget.controller.isLoading == false
          ? ListView.builder(
              itemCount: widget.controller.vaccineModel.data.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    _openModalSheetDetails(
                        context, widget.controller.vaccineModel, index);
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
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
                            SvgPicture.asset(
                              'assets/images/medicalHistory.svg',
                              height: 26,
                            ),
                            Flexible(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(widget.controller.vaccineModel
                                        .data[index].candidate),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      widget.controller.vaccineModel.data[index]
                                          .mechanism,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              })
          : Container(),
    );
  }
}
