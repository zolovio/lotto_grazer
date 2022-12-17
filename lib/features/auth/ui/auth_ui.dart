import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_formfield.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  final ValueNotifier<bool> isLogin = ValueNotifier(false);
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode nameFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmPasswordFocusNode = FocusNode();
  FocusNode countryFocusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();

    _name.dispose();
    _email.dispose();
    _password.dispose();
    _confirmPassword.dispose();

    emailFocusNode.dispose();
    nameFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize:
            Size(Utils.width(context) * 1, Utils.height(context) * 0.1),
        child: const CutomAppBar(),
      ),
      body: ValueListenableBuilder(
          valueListenable: isLogin,
          builder: (context, val, _) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 25.0),
                    leading: CustomButton(
                      title: 'LOGIN',
                      onpress: () {
                        isLogin.value = !isLogin.value;
                        // Navigator.of(context).pushNamed(RoutesName.login);
                      },
                      bgColor: isLogin.value
                          ? AppColors.whiteColor
                          : const Color(0xFFbdd7ee),
                      fgColor: isLogin.value
                          ? AppColors.greyColor
                          : AppColors.blackColor,
                      bdColor: AppColors.blueColor,
                      btnwidth: Utils.width(context) * 0.25,
                      btnheight: Utils.height(context) * 0.06,
                      bottomRightRadius: 0.0,
                      topLeftRadius: 0.0,
                      fontsize: 16.0,
                      bdwidth: 2.0,
                    ),
                    trailing: CustomButton(
                      title: 'SIGNUP',
                      onpress: () {
                        isLogin.value = !isLogin.value;
                        // Navigator.of(context).pushNamed(RoutesName.login);
                      },
                      bgColor: !isLogin.value
                          ? AppColors.whiteColor
                          : const Color(0xFFbdd7ee),
                      fgColor: AppColors.blackColor,
                      bdColor: AppColors.blueColor,
                      btnwidth: Utils.width(context) * 0.25,
                      btnheight: Utils.height(context) * 0.06,
                      bottomRightRadius: 0.0,
                      topLeftRadius: 0.0,
                      fontsize: 16.0,
                      bdwidth: 2.0,
                    ),
                  ),
                  isLogin.value
                      ? SizedBox(
                          height: Utils.height(context) * 0.025,
                        )
                      : SizedBox(
                          height: Utils.height(context) * 0.1,
                        ),
                  !isLogin.value
                      ? const Center()
                      : Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                            vertical: 20.0,
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
                            bgColor: !isLogin.value
                                ? AppColors.whiteColor
                                : const Color(0xFFbdd7ee),
                            fgColor: AppColors.greyColor,
                            fontStyle: FontStyle.italic,
                            // bdColor: AppColors.blueColor,
                            width: Utils.width(context) * 0.8,
                            height: Utils.height(context) * 0.065,
                            bottomRightRadius: 0.0,
                            bottomLeftRadius: 15.0,
                            topLeftRadius: 0.0,
                            topRightRadius: 15.0,
                            fontsize: 14.0,
                            bdwidth: 2.5,
                            gradientcolors: const [
                              Color(0xFF41719c),
                              Color(0xFF7296b6),
                            ],
                          ),
                        ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 20.0,
                    ),
                    child: CustomFormField(
                      title: isLogin.value
                          ? 'ENTER YOUR EMAIL/PHONE NUMBER'
                          : 'EMAIL/PHONE NUMBER',
                      fieldcontroller: _email,
                      focusnode: emailFocusNode,
                      onchange: (val) {
                        // islogin.value = !islogin.value;
                        // Navigator.of(context).pushNamed(RoutesName.login);
                      },
                      onsaved: (String? val) {
                        Utils.fieldFocusChange(
                            context, emailFocusNode, passwordFocusNode);
                      },
                      bgColor: !isLogin.value
                          ? AppColors.whiteColor
                          : const Color(0xFFbdd7ee),
                      fgColor: isLogin.value
                          ? AppColors.greyColor
                          : AppColors.blackColor,
                      // bdColor: AppColors.blueColor,
                      width: Utils.width(context) * 0.8,
                      height: isLogin.value
                          ? Utils.height(context) * 0.07
                          : Utils.height(context) * 0.075,
                      bottomRightRadius: isLogin.value ? 0.0 : 10.0,
                      bottomLeftRadius: isLogin.value ? 15.0 : 30.0,
                      topLeftRadius: isLogin.value ? 0.0 : 10.0,
                      topRightRadius: isLogin.value ? 15.0 : 30.0,
                      fontsize: isLogin.value ? 14.0 : 16.0,
                      fontStyle: FontStyle.italic,
                      bdwidth: 2.5,
                      gradientcolors: const [
                        Color(0xFF41719c),
                        Color(0xFF7296b6),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 20.0,
                    ),
                    child: CustomFormField(
                      title: isLogin.value ? 'ENTER A PASSWORD' : 'PASSWORD',
                      fieldcontroller: _password,
                      focusnode: passwordFocusNode,
                      onchange: (val) {},
                      onsaved: (String? val) {
                        Utils.fieldFocusChange(context, passwordFocusNode,
                            confirmPasswordFocusNode);
                      },
                      bgColor: !isLogin.value
                          ? AppColors.whiteColor
                          : const Color(0xFFbdd7ee),
                      fgColor: isLogin.value
                          ? AppColors.greyColor
                          : AppColors.blackColor,
                      fontStyle: FontStyle.italic,
                      // bdColor: AppColors.blueColor,
                      width: Utils.width(context) * 0.8,
                      height: isLogin.value
                          ? Utils.height(context) * 0.07
                          : Utils.height(context) * 0.075,
                      bottomRightRadius: isLogin.value ? 0.0 : 10.0,
                      bottomLeftRadius: isLogin.value ? 15.0 : 30.0,
                      topLeftRadius: isLogin.value ? 0.0 : 10.0,
                      topRightRadius: isLogin.value ? 15.0 : 30.0,
                      fontsize: isLogin.value ? 14.0 : 16.0,
                      bdwidth: 2.5,
                      gradientcolors: const [
                        Color(0xFF41719c),
                        Color(0xFF7296b6),
                      ],
                    ),
                  ),
                  !isLogin.value
                      ? const Center()
                      : Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                            vertical: 20.0,
                          ),
                          child: CustomFormField(
                            title: 'RE-TYPE PASSWORD',
                            focusnode: confirmPasswordFocusNode,
                            fieldcontroller: _confirmPassword,
                            onchange: (val) {},
                            onsaved: (String? val) {
                              Utils.fieldFocusChange(
                                  context,
                                  confirmPasswordFocusNode,
                                  confirmPasswordFocusNode);
                            },
                            bgColor: !isLogin.value
                                ? AppColors.whiteColor
                                : const Color(0xFFbdd7ee),
                            fgColor: isLogin.value
                                ? AppColors.greyColor
                                : AppColors.blackColor,
                            fontStyle: FontStyle.italic,
                            // bdColor: AppColors.blueColor,
                            width: Utils.width(context) * 0.8,
                            height: Utils.height(context) * 0.065,
                            bottomRightRadius: 0.0,
                            bottomLeftRadius: 15.0,
                            topLeftRadius: 0.0,
                            topRightRadius: 15.0,
                            fontsize: 14.0,
                            bdwidth: 2.5,
                            gradientcolors: const [
                              Color(0xFF41719c),
                              Color(0xFF7296b6),
                            ],
                          ),
                        ),
                  !isLogin.value
                      ? const Center()
                      : Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                            vertical: 20.0,
                          ),
                          child: CustomFormField(
                            title: 'COUNTRY',
                            focusnode: confirmPasswordFocusNode,
                            fieldcontroller: _confirmPassword,
                            onchange: (val) {},
                            onsaved: (String? val) {
                              Utils.fieldFocusChange(
                                  context, countryFocusNode, FocusNode());
                            },
                            bgColor: !isLogin.value
                                ? AppColors.whiteColor
                                : const Color(0xFFbdd7ee),
                            fgColor: isLogin.value
                                ? AppColors.greyColor
                                : AppColors.blackColor,
                            fontStyle: FontStyle.italic,
                            // bdColor: AppColors.blueColor,
                            width: Utils.width(context) * 0.8,
                            height: Utils.height(context) * 0.065,
                            bottomRightRadius: 0.0,
                            bottomLeftRadius: 15.0,
                            topLeftRadius: 0.0,
                            topRightRadius: 15.0,
                            fontsize: 14.0,
                            bdwidth: 2.5,
                            gradientcolors: const [
                              Color(0xFF41719c),
                              Color(0xFF7296b6),
                            ],
                          ),
                        ),
                  isLogin.value
                      ? const Center()
                      : Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                              vertical: 0.0,
                            ),
                            child: CustomButton(
                              title: 'FORGOT - PASSWORD ?',
                              onpress: () {
                                // islogin.value = !islogin.value;
                                // Navigator.of(context).pushNamed(RoutesName.login);
                              },
                              elevation: 0.0,
                              underline: true,
                              bgColor: AppColors.whiteColor.withOpacity(0.1),
                              fgColor: AppColors.blackColor,
                              bdColor: AppColors.whiteColor,
                              btnwidth: Utils.width(context) * 0.2,
                              btnheight: Utils.height(context) * 0.06,
                              bottomRightRadius: 0.0,
                              topLeftRadius: 0.0,
                              fontsize: 13.0,
                              bdwidth: 0.0,
                              fontweight: FontWeight.w500,
                            ),
                          ),
                        ),
                  isLogin.value
                      ? const Center()
                      : SizedBox(
                          height: Utils.height(context) * 0.15,
                        ),
                  isLogin.value
                      ? const Center()
                      : Text(
                          'CONTINUE FREE WITH ADS',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w700,
                              color: AppColors.blackColor,
                              fontSize: 20.0,
                              wordSpacing: 0,
                              textBaseline: TextBaseline.alphabetic,
                              textStyle: Theme.of(context).textTheme.headline4),
                        ),
                  SizedBox(
                    height: Utils.height(context) * 0.02,
                  ),
                  !isLogin.value
                      ? CustomButton(
                          title: 'CLICK HERE',
                          onpress: () {
                            Navigator.of(context).pushNamed(RoutesName.home);
                          },
                          bgColor: AppColors.clickBackgroundColor,
                          fgColor: AppColors.blackColor,
                          bdColor: AppColors.blueColor,
                          btnwidth: Utils.width(context) * 0.35,
                          btnheight: Utils.height(context) * 0.065,
                          bottomRightRadius: 30.0,
                          bottomLeftRadius: 30.0,
                          topLeftRadius: 30.0,
                          topRightRadius: 30.0,
                          fontsize: 17.0,
                          fontweight: FontWeight.w700,
                          bdwidth: 2.0,
                        )
                      : CustomButton(
                          title: 'SIGNUP',
                          onpress: () {
                            Navigator.of(context).pushNamed(RoutesName.home);
                          },
                          bgColor: AppColors.chooseBackgroundColor,
                          fgColor: AppColors.blackColor,
                          bdColor: AppColors.blackColor,
                          btnwidth: Utils.width(context) * 0.30,
                          btnheight: Utils.height(context) * 0.06,
                          bottomRightRadius: 5.0,
                          bottomLeftRadius: 5.0,
                          topLeftRadius: 5.0,
                          topRightRadius: 5.0,
                          fontsize: 17.0,
                          fontweight: FontWeight.w700,
                          bdwidth: 3.0,
                        ),
                ],
              ),
            );
          }),
    );
  }
}
