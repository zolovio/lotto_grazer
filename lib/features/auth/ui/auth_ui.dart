import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotto_grazer/features/auth/ui/auth_ui_vm.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_formfield.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';
import 'package:lotto_grazer/utils/utils.dart';

class AuthUi extends StatefulWidget {
  const AuthUi({super.key});

  @override
  State<AuthUi> createState() => _AuthUiState();
}

class _AuthUiState extends State<AuthUi> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();
  final TextEditingController _country = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode nameFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmpasswordFocusNode = FocusNode();
  FocusNode countryFocusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();

    _name.dispose();
    _email.dispose();
    _password.dispose();
    _confirmpassword.dispose();

    emailFocusNode.dispose();
    nameFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmpasswordFocusNode.dispose();
    countryFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: Size(Utils.width(context) * 1, 60.h),
          child: const CustomAppBar(),
        ),
        body: Consumer(builder: (context, ref, _) {
          final vm = ref.watch(authUiVmVmProvider);

          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 25.sm,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                        title: ' LOGIN ',
                        onpress: () {
                          vm.setIsLogin(true);
                          vm.setIsSignup(false);
                          // Navigator.of(context).pushNamed(RoutesName.login);
                        },
                        bgColor: vm.isLogin
                            ? const Color(0xFFbdd7ee)
                            : AppColors.whiteColor,
                        fgColor: AppColors.blackColor,
                        bdColor: AppColors.blueColor,
                        btnwidth: 65.w,
                        btnheight: 40.h,
                        bottomRightRadius: 0.0,
                        topLeftRadius: 0.0,
                        fontsize: 15.sp,
                        bdwidth: 3.w,
                      ),
                      CustomButton(
                        title: 'SIGNUP',
                        onpress: () {
                          vm.setIsSignup(true);
                          vm.setIsLogin(false);
                          // Navigator.of(context).pushNamed(RoutesName.login);
                        },
                        bgColor: vm.isSignup
                            ? const Color(0xFFbdd7ee)
                            : AppColors.whiteColor,
                        fgColor: AppColors.blackColor,
                        bdColor: AppColors.blueColor,
                        btnwidth: 65.w,
                        btnheight: 40.h,
                        bottomRightRadius: 0.0,
                        topLeftRadius: 0.0,
                        fontsize: 15.sp,
                        bdwidth: 3.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                vm.isSignup
                    ? Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.sm,
                          vertical: 20.sm,
                        ),
                        child: CustomFormField(
                          title: 'ENTER YOUR NAME',
                          focusnode: nameFocusNode,
                          fieldcontroller: _name,
                          onchange: (val) {},
                          onsaved: (String? val) {
                            Utils.fieldFocusChange(
                                context, nameFocusNode, emailFocusNode);
                          },
                          bgColor: vm.isSignup
                              ? AppColors.whiteColor
                              : const Color(0xFFbdd7ee),
                          fgColor: AppColors.blackColor,
                          // bdColor: AppColors.blueColor,
                          width: 420.w,
                          height: 45.h,
                          bottomRightRadius: 0.0,
                          bottomLeftRadius: 14.r,
                          topLeftRadius: 0.0,
                          topRightRadius: 14.r,
                          fontsize: 16.sp,
                          bdwidth: 2.4.w,
                          gradientcolors: const [
                            Color(0xFF41719c),
                            Color(0xFF7296b6),
                          ],
                        ),
                      )
                    : const Center(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.sm,
                    vertical: 20.sm,
                  ),
                  child: CustomFormField(
                    title: vm.isLogin
                        ? 'ENTER YOUR EMAIL/PHONE NUMBER'
                        : 'EMAIL/PHONE NUMBER',
                    fieldcontroller: _email,
                    focusnode: emailFocusNode,
                    onchange: (val) {
                      // vm.isLogin  =  vm.isSignup ;
                      // Navigator.of(context).pushNamed(RoutesName.login);
                    },
                    onsaved: (String? val) {
                      Utils.fieldFocusChange(
                          context, emailFocusNode, passwordFocusNode);
                    },
                    bgColor: vm.isSignup
                        ? AppColors.whiteColor
                        : const Color(0xFFbdd7ee),
                    fgColor: AppColors.blackColor,
                    // bdColor: AppColors.blueColor,
                    width: 420.w,
                    height: vm.isLogin ? 45.h : 46.h,
                    bottomRightRadius: vm.isLogin ? 0.0 : 10.0,
                    bottomLeftRadius: vm.isLogin ? 15.r : 30.r,
                    topLeftRadius: vm.isLogin ? 0.0 : 10.r,
                    topRightRadius: vm.isLogin ? 15.r : 30.r,
                    fontsize: 16.sp,
                    bdwidth: 2.4.w,
                    gradientcolors: const [
                      Color(0xFF41719c),
                      Color(0xFF7296b6),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.sm,
                    vertical: 20.sm,
                  ),
                  child: CustomFormField(
                    title: vm.isLogin ? 'ENTER A PASSWORD' : 'PASSWORD',
                    fieldcontroller: _password,
                    focusnode: passwordFocusNode,
                    onchange: (val) {},
                    onsaved: (String? val) {
                      Utils.fieldFocusChange(
                          context, passwordFocusNode, confirmpasswordFocusNode);
                    },
                    bgColor: vm.isSignup
                        ? AppColors.whiteColor
                        : const Color(0xFFbdd7ee),
                    fgColor: AppColors.blackColor,
                    // bdColor: AppColors.blueColor,
                    width: 420.w,
                    height: vm.isLogin ? 45.h : 46.h,
                    bottomRightRadius: vm.isLogin ? 0.0 : 10.r,
                    bottomLeftRadius: vm.isLogin ? 15.0 : 30.r,
                    topLeftRadius: vm.isLogin ? 0.0 : 10.r,
                    topRightRadius: vm.isLogin ? 15.r : 30.r,
                    fontsize: 16.sp,
                    bdwidth: 2.4.w,
                    gradientcolors: const [
                      Color(0xFF41719c),
                      Color(0xFF7296b6),
                    ],
                  ),
                ),
                vm.isSignup
                    ? Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.sm,
                          vertical: 20.sm,
                        ),
                        child: CustomFormField(
                          title: 'RE-TYPE PASSWORD',
                          focusnode: confirmpasswordFocusNode,
                          fieldcontroller: _confirmpassword,
                          onchange: (val) {},
                          onsaved: (String? val) {
                            Utils.fieldFocusChange(
                                context,
                                confirmpasswordFocusNode,
                                confirmpasswordFocusNode);
                          },
                          bgColor: vm.isSignup
                              ? AppColors.whiteColor
                              : const Color(0xFFbdd7ee),
                          fgColor: AppColors.blackColor,
                          // bdColor: AppColors.blueColor,
                          width: 420.w,
                          height: 45.h,
                          bottomRightRadius: 0.0,
                          bottomLeftRadius: 15.r,
                          topLeftRadius: 0.0,
                          topRightRadius: 15.r,
                          fontsize: 16.sp,
                          bdwidth: 2.4.w,
                          gradientcolors: const [
                            Color(0xFF41719c),
                            Color(0xFF7296b6),
                          ],
                        ),
                      )
                    : const Center(),
                vm.isSignup
                    ? Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.sm,
                          vertical: 20.sm,
                        ),
                        child: CustomFormField(
                          title: 'Country',
                          focusnode: countryFocusNode,
                          fieldcontroller: _country,
                          onchange: (val) {},
                          onsaved: (String? val) {
                            Utils.fieldFocusChange(
                                context, countryFocusNode, countryFocusNode);
                          },
                          bgColor: vm.isSignup
                              ? AppColors.whiteColor
                              : const Color(0xFFbdd7ee),
                          fgColor: AppColors.blackColor,
                          // bdColor: AppColors.blueColor,
                          width: 420.w,
                          height: 45.h,
                          bottomRightRadius: 0.0,
                          bottomLeftRadius: 15.r,
                          topLeftRadius: 0.0,
                          topRightRadius: 15.r,
                          fontsize: 16.sp,
                          bdwidth: 2.4.w,
                          gradientcolors: const [
                            Color(0xFF41719c),
                            Color(0xFF7296b6),
                          ],
                        ),
                      )
                    : const Center(),
                vm.isLogin
                    ? Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 25.sm,
                            vertical: 0.sm,
                          ),
                          child: CustomButton(
                            title: 'FORGOT -PASSWORD ?',
                            onpress: () {
                              // vm.isLogin  =  vm.isSignup ;
                              // Navigator.of(context).pushNamed(RoutesName.login);
                            },
                            elevation: 0.0,
                            underline: true,
                            bgColor: AppColors.whiteColor.withOpacity(0.1),
                            fgColor: AppColors.blackColor,
                            bdColor: AppColors.whiteColor,
                            btnwidth: 180.w,
                            btnheight: 10.h,
                            bottomRightRadius: 0.0,
                            topLeftRadius: 0.0,
                            fontsize: 16.sp,
                            bdwidth: 0.0,
                          ),
                        ),
                      )
                    : const Center(),
                vm.isLogin
                    ? SizedBox(
                        height: 90.h,
                      )
                    : const Center(),
                vm.isLogin
                    ? Text(
                        'CONTINUE FREE WITH ADS',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w700,
                            color: AppColors.blackColor,
                            fontSize: 25.sp,
                            wordSpacing: 0,
                            textBaseline: TextBaseline.alphabetic,
                            textStyle: Theme.of(context).textTheme.headline4),
                      )
                    : const Center(),
                vm.isSignup
                    ? SizedBox(
                        height: 20.h,
                      )
                    : SizedBox(
                        height: 15.h,
                      ),
                vm.isSignup
                    ? CustomButton(
                        title: 'SIGNUP',
                        onpress: () {
                          Navigator.of(context).pushNamed(RoutesName.dashboard);
                        },
                        bgColor: Colors.grey.withOpacity(0.05),
                        fgColor: AppColors.blackColor,
                        bdColor: AppColors.blackColor,
                        btnwidth: 150.w,
                        btnheight: 42.h,
                        bottomRightRadius: 5.r,
                        bottomLeftRadius: 5.r,
                        topLeftRadius: 5.r,
                        topRightRadius: 5.r,
                        fontsize: 16.sp,
                        fontweight: FontWeight.w600,
                        bdwidth: 3.w,
                      )
                    : CustomButton(
                        title: 'CLICK HERE',
                        onpress: () {
                          Navigator.of(context).pushNamed(RoutesName.dashboard);
                        },
                        bgColor: const Color.fromARGB(255, 233, 229, 229),
                        fgColor: AppColors.blackColor,
                        bdColor: AppColors.blueColor,
                        btnwidth: 150.w,
                        btnheight: 42.h,
                        bottomRightRadius: 30.sm,
                        bottomLeftRadius: 30.sm,
                        topLeftRadius: 30.sm,
                        topRightRadius: 30.sm,
                        fontsize: 16.sp,
                        fontweight: FontWeight.w600,
                        bdwidth: 3.w,
                      ),
                SizedBox(
                  height: 10.h,
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
