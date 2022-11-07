import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/find_compare/ui/find_compare_event/find_compare_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/common_drop_down.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_formfield.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/utils/utils.dart';

class FindCompareEventScreen extends StatefulWidget {
  const FindCompareEventScreen({super.key});

  @override
  State<FindCompareEventScreen> createState() => _FindCompareEventScreenState();
}

class _FindCompareEventScreenState extends State<FindCompareEventScreen> {
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
      body: Consumer(builder: (context, ref, _) {
        final _vm = ref.watch(findCompareEventVmProvider);
        return ListView(
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
              child: InkWell(
                onTap: () {
                  _vm.onSearchTap(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: AppColors.blackColor, width: 2.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: CustomText(
                      text: 'SEARCH',
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                      textColor: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      }),
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
