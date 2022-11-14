import 'package:flutter/material.dart';
import 'package:lotto_grazer/features/overdue%20number/overdue_numbers_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_child_container.dart';
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
            title: 'OVERDUE NUMBERS',
            bgColor: AppColors.blackColor,
            fgColor: AppColors.whiteColor,
            fontsize: 18.0,
            fontweight: FontWeight.w800,
            border: Border.all(
              width: 0.0,
              color: AppColors.whiteColor.withOpacity(0.1),
            ),
          ),
          CustomContainer(
            width: Utils.width(context) * 1,
            height: Utils.height(context) * 0.13,
            padding: const EdgeInsets.all(10.0),
            title:
                'Overdue Numbers is a showcase of the ten(10) numbers which have not been drawn for the longest amount of time. The table below shows how many draw it has been since each number last appeared.',
            bgColor: AppColors.whiteColor.withOpacity(0.1),
            fgColor: AppColors.blackColor,
            fontsize: 16.0,
            fontweight: FontWeight.w500,
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
            border: const Border(
              // top: BorderSide(
              //   width: 3.0,
              //   color: AppColors.blackColor,
              // ),
              bottom: BorderSide(
                width: 3.0,
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
            vm.tablerows.clear();
            vm.tablerows.add(vm.tableheader);
            for (var i = 0; i < vm.numbers.length; i++) {
              vm.tablerows.add(vm.rowgenerator(
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
                // style: BorderStyle.solid,
                width: 2,
              ),
              children: vm.tablerows,
            );
          }),
          const CustomcatContainer(title: 'NL BONANZA'),
          const CustomViewContainer(),
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
      height: Utils.height(context) * 0.07,
      padding: const EdgeInsets.all(15.0),
      title: title.toString(),
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      fgColor: AppColors.blackColor,
      fontsize: 18.0,
      fontweight: FontWeight.w700,
      align: TextAlign.center,
      border: const Border(
        bottom: BorderSide(
          color: Colors.black,
          width: 3.0,
        ),
        top: BorderSide(
          color: Colors.black,
          width: 3.0,
        ),
      ),
    );
  }
}

class CustomViewContainer extends StatelessWidget {
  const CustomViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomChildContainer(
      width: Utils.width(context) * 1.0,
      height: Utils.height(context) * 0.12,
      bgColor: AppColors.whiteColor.withOpacity(0.1),
      border: const Border(
        // top: BorderSide(
        //   width: 3.0,
        //   color: AppColors.blackColor,
        // ),
        bottom: BorderSide(
          width: 3.0,
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
              CustomContainer(
                width: Utils.width(context) * 1.0,
                // height: Utils.height(context) * 0.07,
                padding: const EdgeInsets.all(5.0),
                title: '',
                bgColor: AppColors.whiteColor.withOpacity(0.1),
                fgColor: AppColors.blackColor,
                fontsize: 18.0,
                fontweight: FontWeight.w700,
                align: TextAlign.center,
                border: const Border(
                  // bottom: BorderSide(
                  //   color: Colors.black,
                  //   width: 3.0,
                  // ),
                  top: BorderSide(
                    color: Colors.black,
                    width: 3.0,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 25.0,
            left: Utils.width(context) * 0.35,
            child: CustomButton(
              btnwidth: Utils.width(context) * 0.2,
              btnheight: Utils.height(context) * 0.05,
              bottomLeftRadius: 5.0,
              topLeftRadius: 5.0,
              bottomRightRadius: 5.0,
              topRightRadius: 5.0,
              bdwidth: 2.0,
              bdColor: AppColors.blueColor,
              bgColor: const Color(0XFFf2f2f2),
              fgColor: AppColors.blackColor,
              title: '  View  ',
              fontsize: 16.0,
              fontweight: FontWeight.w700,
              onpress: () {},
            ),
          ),
        ],
      ),
    );
  }
}
