// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_local_variable

// import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:clinix_admin_panel/core/utils/colors.dart';
import 'package:clinix_admin_panel/core/utils/constant.dart';
import 'package:clinix_admin_panel/screens/login_screen/widgets/auth_feild.dart';
import 'package:clinix_admin_panel/screens/login_screen/widgets/login_news.dart';
import 'package:clinix_admin_panel/screens/main_screen/view/main_screen.dart';
import 'package:floating_bubbles/floating_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../controllers/login_controller.dart';

import '../../../controllers/theme_controller.dart';
import '../../../core/utils/text_style.dart';

class LoginScreenView extends StatefulWidget {
  const LoginScreenView({super.key});

  @override
  State<LoginScreenView> createState() => _LoginScreenViewState();
}

class _LoginScreenViewState extends State<LoginScreenView> {
  bool valuefirst = false;

  final LoginController controller = Get.put(LoginController());
  final GlobalKey<FormState> rowFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> columnFormKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      body: width > 750 ? row(context, height, width) : column(context, height),
    );
  }

  Form row(BuildContext context, double height, double width) {
    return Form(
      key: rowFormKey,
      child: Row(
        children: [
          Expanded(
            flex: width > 880
                ? 1
                : width > 750
                    ? 1
                    : 2,
            child: loginfileds(width),
          ),
          Expanded(
            flex: width > 880
                ? 3
                : width > 750
                    ? 2
                    : 3,
            child: imageLogin(context),
          )
        ],
      ),
    );
  }

  Form column(BuildContext context, double height) {
    return Form(
      key: columnFormKey,
      child: loginfileds(height),
    );
  }

  Padding loginfileds(height) {
    LoginController loginController = Get.find();
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20.0),
      child: Column(
        children: [
          DrawerHeader(
              child: Center(
            child: ListTile(
              dense: true,
              leading: Image.asset(logo1),
              title: const ResponsiveTextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, text: 'ClinicX'),
              subtitle: const ResponsiveTextStyle(
                  fontWeight: FontWeight.bold, fontSize: 10, text: 'V 1.0.0'),
            ),
          )),
          Expanded(
            child: Obx(
              () => ListView(
                children: [
                  SizedBox(height: 10),
                  ResponsiveTextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    text: "Welcome Back !",
                  ),
                  SizedBox(height: 8),
                  ResponsiveTextStyle(
                      text: "Sign in to continue to ClinicX.",
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  SizedBox(height: 35),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ResponsiveTextStyle(
                      text: "Username",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  AuthFeild(
                    hint: 'Enter username',
                    obscure: false,
                  ),
                  SizedBox(height: 17),
                  Row(
                    children: [
                      ResponsiveTextStyle(
                        text: "Password",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      Spacer(flex: 1),
                      Expanded(
                        flex: 3,
                        child: InkWell(
                          // onTap: () => Get.to(() => ResetPassword()),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: ResponsiveTextStyle(
                              text: "Forgot password?",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  AuthFeild(
                    hint: 'Enter password',
                    obscure: loginController.isShow.value,
                    suffixIcon: InkWell(
                      onTap: () {
                        loginController.isShow.value =
                            !loginController.isShow.value;
                      },
                      child: Container(
                        color: Colors.grey[200],
                        width: 50,
                        child: Icon(
                          loginController.isShow.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: AppColor.black,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 17),
                  Row(
                    children: [
                      Checkbox(
                        side: BorderSide(),
                        value: valuefirst,
                        onChanged: (value) {
                          setState(() {
                            valuefirst = value!;
                          });
                        },
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: ResponsiveTextStyle(
                          text: "Remember me",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  InkWell(
                    onTap: () {
                      Get.offAll(MainScreenView(), fullscreenDialog: true);
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                              height: 38,
                              decoration: BoxDecoration(
                                color: themeProvider.isDarkMode
                                    ? AppColor.mainbackground
                                    : AppColor.selecteColor,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: ResponsiveTextStyle(
                                  text: "Log in",
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: themeProvider.isDarkMode
                                      ? AppColor.black
                                      : AppColor.mainbackground,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(height: 20),
                  ResponsiveTextStyle(
                    text: "- Sign in with -",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.center,
                  ),
                  Container(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/svg/facebook.svg"),
                      Container(width: 11),
                      SvgPicture.asset("assets/svg/twitter.svg"),
                      Container(width: 11),
                      SvgPicture.asset("assets/svg/google.svg")
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 6,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Don't have an account ?",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        // onTap: () => Get.to(() => Signup()),
                        child: Text(
                          ' Signup now',
                          overflow: TextOverflow.fade,
                          softWrap: false,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Spacer(flex: 2)
                    ],
                  ),
                  SizedBox(height: 70),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: ResponsiveTextStyle(
                            text: "2024 ClinicX. All rights reserved.",
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(width: 4),
                      Icon(
                        Icons.copyright,
                        size: 14,
                      ),
                      Spacer(flex: 2),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Stack imageLogin(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            clinci,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: FloatingBubbles.alwaysRepeating(
            noOfBubbles: 10,
            colorsOfBubbles: [
              AppColor.mainbackground,
              AppColor.black,
            ],
            sizeFactor: 0.05,
            opacity: 50,
            paintingStyle: PaintingStyle.fill,
            shape: BubbleShape.square,
            speed: BubbleSpeed.values[1],
          ),
        ),
        ListView(
          padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20.0),
          children: [
            CarouselSlider(
              items: [
                LoginNews(
                    image: "assets/image/avatar5.png",
                    text:
                        "“I feel confident imposing change on myself. It's a lot more progressing fun than looking back. That's why I ultricies enim at malesuada nibh diam on tortor neaded to throw curve balls.”",
                    name: "Richard Drews"),
                LoginNews(
                    image: "assets/image/avatar.png",
                    text:
                        "“Our task must be to free ourselves by widening our circle of compassion to embrace all living creatures and the whole of quis consectetur nunc sit amet semper justo. nature and its beauty.”",
                    name: "Rosanna French"),
                LoginNews(
                    image: "assets/image/avatar2.png",
                    text:
                        "“I've learned that people will forget what you said, people will forget what you did, but people will never forget how donec in efficitur lectus, nec lobortis metus you made them feel.”",
                    name: "Ilse R. Eaton"),
              ],
              options: CarouselOptions(
                height: 400,
                aspectRatio: 16 / 9,
                viewportFraction: 1.0,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
