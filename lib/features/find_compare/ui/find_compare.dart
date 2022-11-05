import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/common_drop_down.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_formfield.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/utils/utils.dart';

class FindCompareScreen extends StatefulWidget {
  const FindCompareScreen({super.key});

  @override
  State<FindCompareScreen> createState() => _FindCompareScreenState();
}

class _FindCompareScreenState extends State<FindCompareScreen> {
  final ValueNotifier<bool> islogin = ValueNotifier(true);
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(Utils.width(context) * 1, Utils.height(context) * 0.1),
        child: const CutomAppBar(),
      ),
      body: ListView(
        children: [
          Container(
            width: size.width,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomText(
                text: 'FIND & COMPARE EVENTS ',
                textColor: AppColors.whiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonDropDown(
                  initialValue: '1',
                  list: ['1', '2', '3', '4'],
                  onSelect: (value) {
                    print(value);
                  },
                  title: 'NUMBER OF EVENTS:',
                ),
                CommonDropDown(
                  initialValue: 'EVENTS NO',
                  list: ['1', '2', '3', '4', 'EVENTS NO'],
                  onSelect: (value) {
                    print(value);
                  },
                  title: 'FIND BY:',
                ),
                CommonDropDown(
                  initialValue: '28',
                  list: ['1', '2', '3', '28'],
                  onSelect: (value) {
                    print(value);
                  },
                  title: 'WEEKS BELOW:',
                ),
              ],
            ),
          ),
          const EventCard(),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 120.w),
            child: Container(
              width: size.width * 0.05,
              decoration: BoxDecoration(
                color: AppColors.blueColor,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: AppColors.blackColor, width: 2.0),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: CustomText(
                  text: 'SEARCH',
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp,
                  textColor: AppColors.whiteColor,
                ),
              ),
            ),
          )

          // Padding(
          //   padding: const EdgeInsets.symmetric(
          //     horizontal: 30.0,
          //     vertical: 20.0,
          //   ),
          //   child: CustomFormField(
          //     title: islogin.value
          //         ? 'ENTER YOUR EMAIL/PHONE NUMBER'
          //         : 'EMAIL/PHONE NUMBER',
          //     fieldcontroller: _email,
          //     onchange: (val) {
          //       // islogin.value = !islogin.value;
          //       // Navigator.of(context).pushNamed(RoutesName.login);
          //     },
          //     onsaved: (String? val) {},
          //     bgColor: !islogin.value
          //         ? AppColors.whiteColor
          //         : const Color(0xFFbdd7ee),
          //     fgColor: AppColors.blackColor,
          //     // bdColor: AppColors.blueColor,
          //     width: Utils.width(context) * 0.8,
          //     height: islogin.value
          //         ? Utils.height(context) * 0.07
          //         : Utils.height(context) * 0.075,
          //     bottomRightRadius: islogin.value ? 0.0 : 10.0,
          //     bottomLeftRadius: islogin.value ? 15.0 : 30.0,
          //     topLeftRadius: islogin.value ? 0.0 : 10.0,
          //     topRightRadius: islogin.value ? 15.0 : 30.0,
          //     fontsize: islogin.value ? 13.0 : 16.0,
          //     bdwidth: 2.5,
          //     gradientcolors: const [
          //       Color(0xFF41719c),
          //       Color(0xFF7296b6),
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(
          //     horizontal: 30.0,
          //     vertical: 20.0,
          //   ),
          //   child: CustomFormField(
          //     title: islogin.value ? 'ENTER A PASSWORD' : 'PASSWORD',
          //     fieldcontroller: _password,
          //     onchange: (val) {},
          //     onsaved: (String? val) {},
          //     bgColor: !islogin.value
          //         ? AppColors.whiteColor
          //         : const Color(0xFFbdd7ee),
          //     fgColor: AppColors.blackColor,
          //     // bdColor: AppColors.blueColor,
          //     width: Utils.width(context) * 0.8,
          //     height: islogin.value
          //         ? Utils.height(context) * 0.07
          //         : Utils.height(context) * 0.075,
          //     bottomRightRadius: islogin.value ? 0.0 : 10.0,
          //     bottomLeftRadius: islogin.value ? 15.0 : 30.0,
          //     topLeftRadius: islogin.value ? 0.0 : 10.0,
          //     topRightRadius: islogin.value ? 15.0 : 30.0,
          //     fontsize: islogin.value ? 13.0 : 16.0,
          //     bdwidth: 2.5,
          //     gradientcolors: const [
          //       Color(0xFF41719c),
          //       Color(0xFF7296b6),
          //     ],
          //   ),
          // ),
          // !islogin.value
          //     ? const Center()
          //     : Padding(
          //         padding: const EdgeInsets.symmetric(
          //           horizontal: 30.0,
          //           vertical: 20.0,
          //         ),
          //         child: CustomFormField(
          //           title: 'RE-TYPE PASSWORD',
          //           fieldcontroller: _confirmpassword,
          //           onchange: (val) {},
          //           onsaved: (String? val) {},
          //           bgColor: !islogin.value
          //               ? AppColors.whiteColor
          //               : const Color(0xFFbdd7ee),
          //           fgColor: AppColors.blackColor,
          //           // bdColor: AppColors.blueColor,
          //           width: Utils.width(context) * 0.8,
          //           height: Utils.height(context) * 0.065,
          //           bottomRightRadius: 0.0,
          //           bottomLeftRadius: 15.0,
          //           topLeftRadius: 0.0,
          //           topRightRadius: 15.0,
          //           fontsize: 13.0,
          //           bdwidth: 2.5,
          //           gradientcolors: const [
          //             Color(0xFF41719c),
          //             Color(0xFF7296b6),
          //           ],
          //         ),
          //       ),
          // islogin.value
          //     ? const Center()
          //     : Align(
          //         alignment: Alignment.centerRight,
          //         child: Padding(
          //           padding: const EdgeInsets.symmetric(
          //             horizontal: 25.0,
          //             vertical: 0.0,
          //           ),
          //           child: CustomButton(
          //             title: 'FORGOT -PASSWORD ?',
          //             onpress: () {
          //               // islogin.value = !islogin.value;
          //               // Navigator.of(context).pushNamed(RoutesName.login);
          //             },
          //             elevation: 0.0,
          //             bgColor: AppColors.whiteColor,
          //             fgColor: AppColors.blackColor,
          //             bdColor: AppColors.whiteColor,
          //             btnwidth: Utils.width(context) * 0.2,
          //             btnheight: Utils.height(context) * 0.06,
          //             bottomRightRadius: 0.0,
          //             topLeftRadius: 0.0,
          //             fontsize: 13.0,
          //             bdwidth: 0.0,
          //           ),
          //         ),
          //       ),
          // islogin.value
          //     ? const Center()
          //     : SizedBox(
          //         height: Utils.height(context) * 0.15,
          //       ),
          // islogin.value
          //     ? const Center()
          //     : Text(
          //         'CONTINUE FREE WITH ADS',
          //         style: GoogleFonts.montserrat(
          //             fontWeight: FontWeight.w800,
          //             color: AppColors.blackColor,
          //             fontSize: 20.0,
          //             wordSpacing: 0,
          //             textBaseline: TextBaseline.alphabetic,
          //             textStyle: Theme.of(context).textTheme.headline4),
          //       ),
        ],
      ),
    );
  }
}

class EventCard extends StatefulWidget {
  const EventCard({Key? key}) : super(key: key);

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.blackColor, width: 3.0)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height * 0.065,
              width: size.height * 0.065,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                color: AppColors.blackColor,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.appbarColor, width: 1.5),
              ),
              child: Center(
                child: CustomText(
                  text: '1',
                  fontSize: 18.sp,
                  textColor: AppColors.whiteColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CommonDropDown(
                  initialValue: 'LOTTERY TYPE',
                  list: ['LOTTERY TYPE', 'LOTTERY GAME'],
                  onSelect: (value) {},
                ),
                SizedBox(height: 10.h),
                CommonDropDown(
                  initialValue: 'LOTTERY TYPE',
                  list: ['LOTTERY TYPE', 'LOTTERY GAME'],
                  onSelect: (value) {},
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                CustomText(
                  text: 'ENTER A NUMBER',
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomFormField(
                    title: '',
                    fieldcontroller: _password,
                    onchange: (val) {},
                    onsaved: (String? val) {},
                    bgColor: const Color(0xFFbdd7ee),
                    fgColor: AppColors.blackColor,
                    width: size.width * 0.25,
                    height: Utils.height(context) * 0.055,
                    bottomRightRadius: 15.0,
                    bottomLeftRadius: 0.0,
                    topLeftRadius: 15.0,
                    topRightRadius: 0.0,
                    bdwidth: 2.5,
                    gradientcolors: const [
                      Color(0xFF41719c),
                      Color(0xFF7296b6),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
