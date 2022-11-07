import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/common_drop_down.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_formfield.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/utils/utils.dart';

import 'miid_fotune_lotto_vm.dart';

class MiidFortuneLottoScreen extends StatefulWidget {
  const MiidFortuneLottoScreen({super.key});

  @override
  State<MiidFortuneLottoScreen> createState() => _MiidFortuneLottoScreenState();
}

class _MiidFortuneLottoScreenState extends State<MiidFortuneLottoScreen> {
  final ValueNotifier<bool> islogin = ValueNotifier(true);
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer(builder: (context, ref, _) {
      final _vm = ref.watch(midFortuneLottoVmProvider);
      return Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size(Utils.width(context) * 1, Utils.height(context) * 0.1),
          child: const CutomAppBar(),
        ),
        body: ListView(
          children: [
            PaginatedDataTable(
              header: CustomText(text: 'MIIDWEEK LOTTO'),
              columns: [
                DataColumn(label: CustomText(text: "DATE")),
                DataColumn(label: CustomText(text: "DRAW")),
                DataColumn(label: CustomText(text: "WINNING")),
                DataColumn(label: CustomText(text: "MACHINE")),
                DataColumn(label: Text("")),
                DataColumn(label: Text("")),
              ],
              source: _vm.myData,
              rowsPerPage: 30,
            )
          ],
        ),
      );
    });
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
