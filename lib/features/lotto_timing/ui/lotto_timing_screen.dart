import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/features/lotto_timing/ui/lotto_timing_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/common_drop_down.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_text.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LottoTimingScreen extends StatefulWidget {
  const LottoTimingScreen({super.key});

  @override
  State<LottoTimingScreen> createState() => _LottoTimingScreenState();
}

class _LottoTimingScreenState extends State<LottoTimingScreen> {
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
        final _vm = ref.watch(lottoTimingProvider);
        return ListView(
          children: [
            Container(
              width: size.width,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: CustomText(
                  text: 'LAPPING NUMBER KEYS',
                  textColor: AppColors.whiteColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: 'Lapping Number Key is a showcase of '
                    'potential lotto keys, using plan patterns of'
                    'numbers lapping vertically,horizontally or'
                    'diagonally, to decipher timing keys,that is'
                    'likely to be used by the lottery system to'
                    'drop its winning numbers.',
                textColor: AppColors.blackColor,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.blackColor, width: 3.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonDropDown(
                          initialValue: 'LOTTERY TYPE',
                          list: ['LOTTERY TYPE', '2', '3', '4'],
                          onSelect: (value) {
                            print(value);
                          },
                          title: '',
                        ),
                        CommonDropDown(
                          initialValue: '2',
                          list: ['1', '2', '3', '28'],
                          onSelect: (value) {
                            print(value);
                          },
                          title: 'COUNTING WEEK',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                      width: size.width,
                      child: CustomRadioButton(
                        list: _vm.keyList,
                        selectedIndex: _vm.selectedIndex,
                        onSelect: (index) {
                          _vm.onSelect(index);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // const EventCard(),
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

class CustomRadioButton extends StatelessWidget {
  final List<String> list;
  final int selectedIndex;
  final Function onSelect;
  const CustomRadioButton(
      {Key? key,
      required this.list,
      required this.selectedIndex,
      required this.onSelect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      itemCount: list.length,
      itemBuilder: (context, index) => Row(
        children: [
          Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              color: selectedIndex == index
                  ? AppColors.blueColor
                  : AppColors.whiteColor,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.appbarColor, width: 2.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: InkWell(
              onTap: () {
                onSelect(index);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: AppColors.blueColor, width: 2.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: CustomText(
                      text: list[index],
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
