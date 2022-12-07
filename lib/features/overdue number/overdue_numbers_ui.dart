import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/overdue%20number/overdue_numbers_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_container.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OverdueNumbersUi extends StatefulWidget {
  const OverdueNumbersUi({super.key});

  @override
  State<OverdueNumbersUi> createState() => _OverdueNumbersUiState();
}

class _OverdueNumbersUiState extends State<OverdueNumbersUi> {
  final TableRow tableheader = TableRow(
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withOpacity(0.1),
        border: Border.all(
          width: 1.w,
          color: AppColors.blackColor,
        ),
      ),
      children: [
        CustomContainer(
            title: '\t',
            align: TextAlign.center,
            bgColor: AppColors.whiteColor.withOpacity(0.1),
            fgColor: AppColors.blackColor,
            fontweight: FontWeight.w700,
            fontsize: 12.sp,
            underline: false),
        CustomContainer(
            title: 'NUMBER',
            align: TextAlign.start,
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            bgColor: const Color(0XFFa9d18e),
            fgColor: AppColors.blackColor,
            fontweight: FontWeight.w800,
            fontsize: 13.sp,
            underline: false),
        CustomContainer(
            title: 'DRAW DELAY FREQUENCY',
            align: TextAlign.center,
            padding: const EdgeInsets.only(
                top: 15.0, bottom: 15.0, right: 12.0, left: 12.0),
            bgColor: const Color(0XFFfff2cc),
            fgColor: AppColors.blackColor,
            fontweight: FontWeight.w700,
            fontsize: 12.0,
            underline: false),
      ]);
  // final tablerow =
  TableRow rowgenerator({
    required String titleCol1,
    required String titleCol2,
    required String titleCol3,
  }) {
    return TableRow(children: [
      CustomContainer(
        title: titleCol1.toString(),
        align: TextAlign.center,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        bgColor: AppColors.greyColor.withOpacity(0.25),
        fgColor: AppColors.blackColor,
        fontweight: FontWeight.w700,
        fontsize: 12.sp,
        underline: false,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 2.5, bottom: 2.5),
        child: CustomContainer(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2.5.w,
            color: AppColors.blueColor,
          ),
          title: titleCol2.toString(),
          align: TextAlign.center,
          padding: const EdgeInsets.all(5.5),
          bgColor: AppColors.whiteColor.withOpacity(0.1),
          fgColor: AppColors.blackColor,
          fontweight: FontWeight.w700,
          fontsize: 12.sp,
          underline: false,
        ),
      ),
      CustomContainer(
        title: titleCol3.toString(),
        align: TextAlign.center,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        bgColor: AppColors.whiteColor.withOpacity(0.1),
        fgColor: AppColors.blackColor,
        fontweight: FontWeight.w700,
        fontsize: 12.sp,
        underline: false,
      ),
    ]);
  }

  List<TableRow> tablerows = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(Utils.width(context) * 1, 70.h),
        child: const CustomAppBar(),
      ),
      body: ListView(
        children: [
          CustomContainer(
            width: Utils.width(context) * 1,
            height: 50.h,
            title: 'OVERDUE NUMBERS',
            bgColor: AppColors.blackColor,
            fgColor: AppColors.whiteColor,
            fontsize: 17.sp,
            fontweight: FontWeight.w700,
            border: Border.all(
              width: 0.0,
              color: AppColors.whiteColor.withOpacity(0.1),
            ),
          ),
          CustomContainer(
            width: Utils.width(context) * 1,
            height: 90.h,
            padding: EdgeInsets.all(10.sm),
            title:
                'Overdue Numbers is a showcase of the ten(10) numbers which have not been drawn for the longest amount of time. The table below shows how many draw it has been since each number last appeared.',
            bgColor: AppColors.whiteColor.withOpacity(0.1),
            fgColor: AppColors.blackColor,
            fontsize: 14.sp,
            fontweight: FontWeight.w600,
            align: TextAlign.left,
            border: Border.all(
              width: 0.0,
              color: AppColors.whiteColor.withOpacity(0.1),
            ),
          ),
          const CustomcatContainer(title: 'GH NATIONAL'),
          CustomChildContainer(
            width: Utils.width(context) * 0.07,
            bgColor: AppColors.whiteColor.withOpacity(0.1),
            border: Border(
              bottom: BorderSide(
                width: 3.w,
                color: AppColors.blackColor,
              ),
            ),
            child: ListTile(
              dense: true,
              title: CustomText(
                  title: 'DRAW: 343',
                  fontcolor: AppColors.blackColor,
                  fontweight: FontWeight.w700,
                  fontsize: 15.0,
                  underline: false),
              trailing: CustomText(
                  title: '13/06/2022',
                  fontcolor: AppColors.blackColor,
                  fontweight: FontWeight.w700,
                  fontsize: 15.0,
                  underline: false),
            ),
          ),
          Consumer(builder: (context, ref, _) {
            final vm = ref.watch(overduenumbersVmProvider);
            tablerows.clear();
            tablerows.add(tableheader);
            for (var i = 0; i < vm.numbers.length; i++) {
              tablerows.add(rowgenerator(
                  titleCol1: '${i + 1}',
                  titleCol2: vm.numbers[i].toString(),
                  titleCol3: vm.drawDelayFrequency[i].toString()));
            }
            return Table(
              columnWidths: const {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(4),
                2: FlexColumnWidth(4),
              },
              border: TableBorder.all(
                color: AppColors.blackColor,
                width: 2.w,
              ),
              children: tablerows,
            );
          }),
          const CustomcatContainer(title: 'NL BONANZA'),
          const CustomViewContainer(
            draw: 973,
            date: '13/06/2022',
          ),
          const CustomcatContainer(title: 'AL PRIME'),
          const CustomViewContainer(
            draw: 346,
            date: '13/06/2022',
          ),
          const CustomcatContainer(title: 'GC WAZOBIA'),
          const CustomViewContainer(
            draw: 748,
            date: '13/06/2022',
          ),
        ],
      ),
    );
  }
}

class CustomcatContainer extends StatelessWidget {
  final String title;
  const CustomcatContainer({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: Utils.width(context) * 0.1,
      height: 50.h,
      padding: EdgeInsets.all(15.sm),
      title: title.toString(),
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      fgColor: AppColors.blackColor,
      fontsize: 17.sp,
      fontweight: FontWeight.w700,
      align: TextAlign.center,
      border: Border(
        bottom: BorderSide(
          color: Colors.black,
          width: 3.w,
        ),
        top: BorderSide(
          color: Colors.black,
          width: 2.w,
        ),
      ),
    );
  }
}

class CustomViewContainer extends StatelessWidget {
  final int draw;
  final String date;
  const CustomViewContainer({
    super.key,
    required this.draw,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return CustomChildContainer(
      width: Utils.width(context) * 1.0,
      height: 85.h,
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      border: Border(
        bottom: BorderSide(
          width: 3.w,
          color: AppColors.blackColor,
        ),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              ListTile(
                dense: true,
                title: CustomText(
                    title: 'DRAW: $draw',
                    fontcolor: AppColors.blackColor,
                    fontweight: FontWeight.w700,
                    fontsize: 14.sp,
                    underline: false),
                trailing: CustomText(
                    title: date.toString(),
                    fontcolor: AppColors.blackColor,
                    fontweight: FontWeight.w700,
                    fontsize: 14.sp,
                    underline: false),
              ),
              CustomContainer(
                width: Utils.width(context) * 1.0,
                padding: const EdgeInsets.all(5.0),
                title: '',
                bgColor: AppColors.whiteColor.withOpacity(0.1),
                fgColor: AppColors.blackColor,
                fontsize: 17.sp,
                fontweight: FontWeight.w700,
                align: TextAlign.center,
                border: Border(
                  top: BorderSide(
                    color: Colors.black,
                    width: 3.w,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 25.h,
            left: Utils.width(context) * 0.35.w,
            child: CustomButton(
              btnwidth: Utils.width(context) * 0.2,
              btnheight: 32.h,
              bottomLeftRadius: 5.r,
              topLeftRadius: 5.r,
              bottomRightRadius: 5.r,
              topRightRadius: 5.r,
              bdwidth: 2.w,
              bdColor: AppColors.blueColor,
              bgColor: const Color(0XFFf2f2f2),
              fgColor: AppColors.blackColor,
              title: '  View  ',
              fontsize: 15.sp,
              fontweight: FontWeight.w700,
              onpress: () {},
            ),
          ),
        ],
      ),
    );
  }
}
