import 'package:flutter/material.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
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
          Row(
            children: [
              CustomContainer(
                width: Utils.width(context) * 0.4,
                height: Utils.height(context) * 0.07,
                // padding: const EdgeInsets.all(15.0),
                title: 'PLAN',
                bgColor: AppColors.greyColor.withOpacity(0.5),
                fgColor: AppColors.blackColor,
                fontsize: 16.0,
                fontweight: FontWeight.w700,
                align: TextAlign.center,
                border: const Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 3.0,
                  ),
                  right: BorderSide(
                    color: Colors.black,
                    width: 3.0,
                  ),
                ),
              ),
              CustomContainer(
                width: Utils.width(context) * 0.6,
                height: Utils.height(context) * 0.07,
                // padding: const EdgeInsets.all(15.0),
                title: 'LAPPING NUMBER',
                bgColor: AppColors.greyColor.withOpacity(0.5),
                fgColor: AppColors.blackColor,
                fontsize: 16.0,
                fontweight: FontWeight.w700,
                align: TextAlign.center,
                border: const Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 3.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomChildContainer(
                width: Utils.width(context) * 0.4,
                height: Utils.height(context) * 0.15,
                // margin: const EdgeInsets.only(bottom: 4.0),
                bgColor: AppColors.whiteColor.withOpacity(0.1),
                border: const Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 3.0,
                  ),
                  // top: BorderSide(
                  //   color: Colors.black,
                  //   width: 3.0,
                  // ),
                  right: BorderSide(
                    color: Colors.black,
                    width: 3.0,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomButton(
                      title: 'W3',
                      onpress: () {
                        // Navigator.of(context)
                        //     .pushNamed(RoutesName.forecastDetails);
                      },
                      bottomLeftRadius: 5.0,
                      bottomRightRadius: 5.0,
                      topRightRadius: 5.0,
                      topLeftRadius: 5.0,
                      fontsize: 11.0,
                      btnwidth: Utils.width(context) * 0.05,
                      btnheight: Utils.height(context) * 0.04,
                    ),
                    CustomContainer(
                      width: Utils.width(context) * 0.15,
                      height: Utils.height(context) * 0.04,
                      margin: const EdgeInsets.only(top: 1.0),
                      title: '18',
                      bgColor: AppColors.whiteColor.withOpacity(0.1),
                      fgColor: AppColors.blackColor,
                      fontsize: 16.0,
                      fontweight: FontWeight.w700,
                      align: TextAlign.center,
                      border: Border.all(
                        color: AppColors.blueColor,
                        width: 3.0,
                      ),
                    ),
                    CustomContainer(
                      width: Utils.width(context) * 0.15,
                      height: Utils.height(context) * 0.04,
                      // margin: const EdgeInsets.all(0.0),
                      title: '51',
                      bgColor: AppColors.whiteColor.withOpacity(0.1),
                      fgColor: AppColors.blackColor,
                      fontsize: 16.0,
                      fontweight: FontWeight.w700,
                      align: TextAlign.center,
                      border: Border.all(
                        color: AppColors.blueColor,
                        width: 3.0,
                      ),
                    ),
                  ],
                ),
              ),
              CustomContainer(
                width: Utils.width(context) * 0.6,
                height: Utils.height(context) * 0.15,
                padding: const EdgeInsets.all(10.0),
                title:
                    'In any two given event the number 18 Laps 51 on the 3rd box winning.',
                bgColor: AppColors.whiteColor.withOpacity(0.1),
                fgColor: AppColors.blackColor,
                fontsize: 15.0,
                fontweight: FontWeight.w600,
                align: TextAlign.left,
                border: const Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 3.0,
                  ),
                ),
              ),
            ],
          ),
          CustomContainer(
            width: Utils.width(context) * 1,
            height: Utils.height(context) * 0.06,
            // padding: const EdgeInsets.all(15.0),
            title: 'REFERENCE EVENTS',
            bgColor: AppColors.greyColor.withOpacity(0.5),
            fgColor: AppColors.blackColor,
            fontsize: 16.0,
            fontweight: FontWeight.w700,
            align: TextAlign.center,
            border: const Border(
              bottom: BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
            ),
          ),
          const CustomRowWidget(
            c1text: 'PM METRO',
            c2text: '433 - 434',
          ),
          const CustomRowWidget(
            c1text: 'PM DIAMOND',
            c2text: '623 - 625',
          ),
          const CustomRowWidget(
            c1text: 'PM PEOPLE',
            c2text: '1423 - 1425',
          ),
          const CustomRowWidget(
            c1text: 'NL FORTUNE',
            c2text: '995 - 996',
          ),
          CustomContainer(
            width: Utils.width(context) * 1,
            height: Utils.height(context) * 0.06,
            // padding: const EdgeInsets.all(15.0),
            title: 'KEY FORECAST',
            bgColor: AppColors.greyColor.withOpacity(0.5),
            fgColor: AppColors.blackColor,
            fontsize: 16.0,
            fontweight: FontWeight.w700,
            align: TextAlign.center,
            border: const Border(
              bottom: BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
            ),
          ),
          CustomContainer(
            width: Utils.width(context) * 1,
            height: Utils.height(context) * 0.15,
            padding:
                const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
            title:
                'Counting 3 weeks up from the plan, the five(5) winning numbers of the event will counter and drop as a banker,8 weeks down',
            bgColor: AppColors.whiteColor.withOpacity(0.1),
            fgColor: AppColors.blackColor,
            fontsize: 15.0,
            fontweight: FontWeight.w600,
            align: TextAlign.left,
            border: const Border(
              bottom: BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
            ),
          ),
          CustomContainer(
            width: Utils.width(context) * 1,
            height: Utils.height(context) * 0.04,
            // padding: const EdgeInsets.all(15.0),
            title: 'PROJECTED BANKERS',
            bgColor: AppColors.greyColor.withOpacity(0.5),
            fgColor: AppColors.blackColor,
            fontsize: 16.0,
            fontweight: FontWeight.w700,
            align: TextAlign.center,
          ),
          CustomChildContainer(
            width: Utils.width(context) * 0.7,
            height: Utils.height(context) * 0.08,
            margin: const EdgeInsets.only(bottom: 4.0),
            bgColor: AppColors.whiteColor.withOpacity(0.1),
            border: const Border(
              bottom: BorderSide(
                width: 3.0,
                color: AppColors.lightBlueColor,
              ),
              top: BorderSide(
                width: 3.0,
                color: AppColors.lightBlueColor,
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => CustomContainer(
                    width: Utils.width(context) * 0.2,
                    height: Utils.height(context) * 0.08,
                    padding: const EdgeInsets.all(5.0),
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 3.0,
                      color: AppColors.lightBlueColor,
                    ),
                    title: '1',
                    bgColor: AppColors.whiteColor.withOpacity(0.1),
                    fgColor: AppColors.blackColor,
                    fontsize: 15.0,
                    align: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: CustomButton(
              btnwidth: Utils.width(context) * 0.05,
              // btnheight: Utils.height(context) * 0.1,
              bottomLeftRadius: 3.0,
              topLeftRadius: 3.0,
              bottomRightRadius: 3.0,
              topRightRadius: 3.0,
              bgColor: AppColors.blackColor.withOpacity(0.8),
              title: 'STAKE',
              fontsize: 16.0,
              fontweight: FontWeight.w700,
              onpress: () {},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomContainer(
                width: Utils.width(context) * 0.2,
                height: Utils.height(context) * 0.08,
                padding: const EdgeInsets.all(5.0),
                // margin: const EdgeInsets.all(5.0),
                border: Border.all(
                  width: 0.0,
                  color: AppColors.whiteColor.withOpacity(0.1),
                ),
                title: 'BEST 3 :',
                bgColor: AppColors.whiteColor.withOpacity(0.1),
                fgColor: AppColors.blackColor,
                fontsize: 16.0,
                fontweight: FontWeight.w700,
                align: TextAlign.center,
              ),
              SizedBox(
                width: Utils.width(context) * 0.15,
              ),
              const CustomNumberContainer(
                title: '1',
              ),
              const CustomNumberContainer(
                title: '1',
              ),
              const CustomNumberContainer(
                title: '1',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomContainer(
                width: Utils.width(context) * 0.2,
                height: Utils.height(context) * 0.08,
                padding: const EdgeInsets.all(5.0),
                border: Border.all(
                  width: 0.0,
                  color: AppColors.whiteColor.withOpacity(0.1),
                ),
                title: 'BEST 5 :',
                bgColor: AppColors.whiteColor.withOpacity(0.1),
                fgColor: AppColors.blackColor,
                fontsize: 16.0,
                fontweight: FontWeight.w700,
                align: TextAlign.center,
              ),
              // SizedBox(
              //   width: Utils.width(context) * 0.1,
              // ),
              const CustomNumberContainer(
                title: '1',
              ),
              const CustomNumberContainer(
                title: '1',
              ),
              const CustomNumberContainer(
                title: '1',
              ),
              const CustomNumberContainer(
                title: '1',
              ),
              const CustomNumberContainer(
                title: '1',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                btnwidth: Utils.width(context) * 0.3,
                btnheight: Utils.height(context) * 0.05,
                bottomLeftRadius: 5.0,
                topLeftRadius: 5.0,
                bottomRightRadius: 5.0,
                topRightRadius: 5.0,
                bdwidth: 2.0,
                bgColor: AppColors.blueColor,
                title: 'Save',
                fontsize: 14.0,
                fontweight: FontWeight.w700,
                onpress: () {},
              ),
              CustomButton(
                btnwidth: Utils.width(context) * 0.6,
                btnheight: Utils.height(context) * 0.05,
                bottomLeftRadius: 5.0,
                topLeftRadius: 5.0,
                bottomRightRadius: 5.0,
                topRightRadius: 5.0,
                bdwidth: 2.0,
                bgColor: const Color(0xFF2f5597),
                title: 'VIEW REFENCE CHARTS',
                fontsize: 14.0,
                fontweight: FontWeight.w700,
                onpress: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomNumberContainer extends StatelessWidget {
  final String title;
  const CustomNumberContainer({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: Utils.width(context) * 0.11,
      height: Utils.height(context) * 0.055,
      // padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      border: Border.all(
        width: 2.0,
        color: AppColors.blueColor,
      ),
      title: title,
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      fgColor: AppColors.blackColor,
      fontsize: 16.0,
      fontweight: FontWeight.w700,
      align: TextAlign.center,
    );
  }
}

class CustomRowWidget extends StatelessWidget {
  final String c1text;
  final String c2text;
  const CustomRowWidget({
    super.key,
    required this.c1text,
    required this.c2text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomContainer(
          width: Utils.width(context) * 0.6,
          // height: Utils.height(context) * 0.04,
          padding: const EdgeInsets.all(10.0),
          title: c1text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 16.0,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: const Border(
            right: BorderSide(
              color: Colors.black,
              width: 3.0,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.0,
            ),
          ),
        ),
        CustomContainer(
          width: Utils.width(context) * 0.4,
          // height: Utils.height(context) * 0.04,
          padding: const EdgeInsets.all(10.0),
          title: c2text,
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontsize: 16.0,
          fontweight: FontWeight.w700,
          align: TextAlign.center,
          border: const Border(
            right: BorderSide(
              color: Colors.black,
              width: 0.0,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 3.0,
            ),
          ),
        ),
      ],
    );
  }
}
