import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/utils/utils.dart';

class ForecastDetails extends StatefulWidget {
  const ForecastDetails({super.key});

  @override
  State<ForecastDetails> createState() => _ForecastDetailsState();
}

class _ForecastDetailsState extends State<ForecastDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(Utils.width(context) * 1, Utils.height(context) * 0.1),
        child: const CutomAppBar(),
      ),
      body: ListView(
        children: [
          CustomContainer(
            width: Utils.width(context) * 1,
            height: Utils.height(context) * 0.08,
            title: 'FORCAST DETAILS',
            bgColor: AppColors.blackColor,
            fgColor: AppColors.whiteColor,
            fontsize: 18.0,
            fontweight: FontWeight.w800,
            border: Border.all(
              width: 0.0,
              color: AppColors.blackColor,
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: Utils.width(context) * 0.5,
                height: Utils.height(context) * 0.08,
                child: CustomContainer(
                  title: 'NL FORTUNE',
                  bgColor: AppColors.whiteColor.withOpacity(0.1),
                  fgColor: AppColors.blackColor,
                  fontsize: 16.0,
                  align: TextAlign.center,
                  fontweight: FontWeight.w800,
                  border: const Border(
                    right: BorderSide(
                      width: 3.0,
                      color: AppColors.blackColor,
                    ),
                    bottom: BorderSide(
                      width: 3.0,
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                // width: Utils.width(context) * 0.6,
                height: Utils.height(context) * 0.08,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: Utils.width(context) * 0.35,
                          height: Utils.height(context) * 0.04,
                          child: CustomContainer(
                            title: 'COUNTING WEEKS',
                            bgColor: AppColors.whiteColor.withOpacity(0.1),
                            fgColor: AppColors.blackColor,
                            fontsize: 10.0,
                            align: TextAlign.center,
                            fontweight: FontWeight.w700,
                            border: const Border(
                              right: BorderSide(
                                width: 3.0,
                                color: AppColors.blackColor,
                              ),
                              bottom: BorderSide(
                                width: 3.0,
                                color: AppColors.blackColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Utils.width(context) * 0.15,
                          height: Utils.height(context) * 0.04,
                          child: CustomContainer(
                            title: '1',
                            bgColor: AppColors.whiteColor.withOpacity(0.1),
                            fgColor: AppColors.blackColor,
                            fontsize: 10.0,
                            align: TextAlign.center,
                            fontweight: FontWeight.w700,
                            border: const Border(
                              bottom: BorderSide(
                                width: 3.0,
                                color: AppColors.blackColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: Utils.width(context) * 0.25,
                          height: Utils.height(context) * 0.04,
                          child: CustomContainer(
                            title: 'UPDATED',
                            bgColor: AppColors.whiteColor.withOpacity(0.1),
                            fgColor: AppColors.blackColor,
                            fontsize: 10.0,
                            align: TextAlign.center,
                            fontweight: FontWeight.w700,
                            border: const Border(
                              right: BorderSide(
                                width: 3.0,
                                color: AppColors.blackColor,
                              ),
                              bottom: BorderSide(
                                width: 3.0,
                                color: AppColors.blackColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Utils.width(context) * 0.25,
                          height: Utils.height(context) * 0.04,
                          child: CustomContainer(
                            title: '02/06/2022',
                            bgColor: AppColors.whiteColor.withOpacity(0.1),
                            fgColor: AppColors.blackColor,
                            fontsize: 10.0,
                            align: TextAlign.center,
                            fontweight: FontWeight.w700,
                            border: const Border(
                              bottom: BorderSide(
                                width: 3.0,
                                color: AppColors.blackColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
