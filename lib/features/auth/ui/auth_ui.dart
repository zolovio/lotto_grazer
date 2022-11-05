import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotto_grazer/res/colors.dart';
import 'package:lotto_grazer/res/components/custom_appbar.dart';
import 'package:lotto_grazer/res/components/custom_button.dart';
import 'package:lotto_grazer/res/components/custom_formfield.dart';
import 'package:lotto_grazer/utils/utils.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  final ValueNotifier<bool> islogin = ValueNotifier(false);
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode nameFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmpasswordFocusNode = FocusNode();

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
          valueListenable: islogin,
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
                        islogin.value = !islogin.value;
                        // Navigator.of(context).pushNamed(RoutesName.login);
                      },
                      bgColor: islogin.value
                          ? AppColors.whiteColor
                          : const Color(0xFFbdd7ee),
                      fgColor: AppColors.blackColor,
                      bdColor: AppColors.blueColor,
                      btnwidth: Utils.width(context) * 0.25,
                      btnheight: Utils.height(context) * 0.06,
                      bottomRightRadius: 0.0,
                      topLeftRadius: 0.0,
                      fontsize: 16.0,
                      bdwidth: 3.0,
                    ),
                    trailing: CustomButton(
                      title: 'SIGNUP',
                      onpress: () {
                        islogin.value = !islogin.value;
                        // Navigator.of(context).pushNamed(RoutesName.login);
                      },
                      bgColor: !islogin.value
                          ? AppColors.whiteColor
                          : const Color(0xFFbdd7ee),
                      fgColor: AppColors.blackColor,
                      bdColor: AppColors.blueColor,
                      btnwidth: Utils.width(context) * 0.25,
                      btnheight: Utils.height(context) * 0.06,
                      bottomRightRadius: 0.0,
                      topLeftRadius: 0.0,
                      fontsize: 16.0,
                      bdwidth: 3.0,
                    ),
                  ),
                  islogin.value
                      ? SizedBox(
                          height: Utils.height(context) * 0.025,
                        )
                      : SizedBox(
                          height: Utils.height(context) * 0.1,
                        ),
                  !islogin.value
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
                            bgColor: !islogin.value
                                ? AppColors.whiteColor
                                : const Color(0xFFbdd7ee),
                            fgColor: AppColors.blackColor,
                            // bdColor: AppColors.blueColor,
                            width: Utils.width(context) * 0.8,
                            height: Utils.height(context) * 0.065,
                            bottomRightRadius: 0.0,
                            bottomLeftRadius: 15.0,
                            topLeftRadius: 0.0,
                            topRightRadius: 15.0,
                            fontsize: 13.0,
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
                      title: islogin.value
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
                      bgColor: !islogin.value
                          ? AppColors.whiteColor
                          : const Color(0xFFbdd7ee),
                      fgColor: AppColors.blackColor,
                      // bdColor: AppColors.blueColor,
                      width: Utils.width(context) * 0.8,
                      height: islogin.value
                          ? Utils.height(context) * 0.07
                          : Utils.height(context) * 0.075,
                      bottomRightRadius: islogin.value ? 0.0 : 10.0,
                      bottomLeftRadius: islogin.value ? 15.0 : 30.0,
                      topLeftRadius: islogin.value ? 0.0 : 10.0,
                      topRightRadius: islogin.value ? 15.0 : 30.0,
                      fontsize: islogin.value ? 13.0 : 16.0,
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
                      title: islogin.value ? 'ENTER A PASSWORD' : 'PASSWORD',
                      fieldcontroller: _password,
                      focusnode: passwordFocusNode,
                      onchange: (val) {},
                      onsaved: (String? val) {
                        Utils.fieldFocusChange(context, passwordFocusNode,
                            confirmpasswordFocusNode);
                      },
                      bgColor: !islogin.value
                          ? AppColors.whiteColor
                          : const Color(0xFFbdd7ee),
                      fgColor: AppColors.blackColor,
                      // bdColor: AppColors.blueColor,
                      width: Utils.width(context) * 0.8,
                      height: islogin.value
                          ? Utils.height(context) * 0.07
                          : Utils.height(context) * 0.075,
                      bottomRightRadius: islogin.value ? 0.0 : 10.0,
                      bottomLeftRadius: islogin.value ? 15.0 : 30.0,
                      topLeftRadius: islogin.value ? 0.0 : 10.0,
                      topRightRadius: islogin.value ? 15.0 : 30.0,
                      fontsize: islogin.value ? 13.0 : 16.0,
                      bdwidth: 2.5,
                      gradientcolors: const [
                        Color(0xFF41719c),
                        Color(0xFF7296b6),
                      ],
                    ),
                  ),
                  !islogin.value
                      ? const Center()
                      : Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                            vertical: 20.0,
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
                            bgColor: !islogin.value
                                ? AppColors.whiteColor
                                : const Color(0xFFbdd7ee),
                            fgColor: AppColors.blackColor,
                            // bdColor: AppColors.blueColor,
                            width: Utils.width(context) * 0.8,
                            height: Utils.height(context) * 0.065,
                            bottomRightRadius: 0.0,
                            bottomLeftRadius: 15.0,
                            topLeftRadius: 0.0,
                            topRightRadius: 15.0,
                            fontsize: 13.0,
                            bdwidth: 2.5,
                            gradientcolors: const [
                              Color(0xFF41719c),
                              Color(0xFF7296b6),
                            ],
                          ),
                        ),
                  islogin.value
                      ? const Center()
                      : Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                              vertical: 0.0,
                            ),
                            child: CustomButton(
                              title: 'FORGOT -PASSWORD ?',
                              onpress: () {
                                // islogin.value = !islogin.value;
                                // Navigator.of(context).pushNamed(RoutesName.login);
                              },
                              elevation: 0.0,
                              underline: true,
                              bgColor: AppColors.whiteColor,
                              fgColor: AppColors.blackColor,
                              bdColor: AppColors.whiteColor,
                              btnwidth: Utils.width(context) * 0.2,
                              btnheight: Utils.height(context) * 0.06,
                              bottomRightRadius: 0.0,
                              topLeftRadius: 0.0,
                              fontsize: 13.0,
                              bdwidth: 0.0,
                            ),
                          ),
                        ),
                  islogin.value
                      ? const Center()
                      : SizedBox(
                          height: Utils.height(context) * 0.15,
                        ),
                  islogin.value
                      ? const Center()
                      : Text(
                          'CONTINUE FREE WITH ADS',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w800,
                              color: AppColors.blackColor,
                              fontSize: 20.0,
                              wordSpacing: 0,
                              textBaseline: TextBaseline.alphabetic,
                              textStyle: Theme.of(context).textTheme.headline4),
                        ),
                  !islogin.value
                      ? SizedBox(
                          height: Utils.height(context) * 0.02,
                        )
                      : SizedBox(
                          height: Utils.height(context) * 0.06,
                        ),
                  !islogin.value
                      ? CustomButton(
                          title: 'CLICK HERE',
                          onpress: () {
                            // islogin.value = !islogin.value;
                            // Navigator.of(context).pushNamed(RoutesName.login);
                          },
                          bgColor: AppColors.whiteColor,
                          fgColor: AppColors.blackColor,
                          bdColor: AppColors.blueColor,
                          btnwidth: Utils.width(context) * 0.25,
                          btnheight: Utils.height(context) * 0.06,
                          bottomRightRadius: 30.0,
                          bottomLeftRadius: 30.0,
                          topLeftRadius: 30.0,
                          topRightRadius: 30.0,
                          fontsize: 17.0,
                          fontweight: FontWeight.w700,
                          bdwidth: 3.0,
                        )
                      : CustomButton(
                          title: 'SIGNUP',
                          onpress: () {
                            // islogin.value = !islogin.value;
                            // Navigator.of(context).pushNamed(RoutesName.login);
                          },
                          bgColor: AppColors.greyColor.withOpacity(0.1),
                          fgColor: AppColors.blackColor,
                          bdColor: AppColors.blackColor,
                          btnwidth: Utils.width(context) * 0.25,
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
