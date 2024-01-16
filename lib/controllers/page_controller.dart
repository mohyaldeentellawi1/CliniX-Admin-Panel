import 'package:clinix_admin_panel/screens/profile_add_video_screen/view/add_video_screen_view.dart';
import 'package:clinix_admin_panel/screens/profile_clinic_description/view/clinic_description_view.dart';
import 'package:clinix_admin_panel/screens/profile_clinic_information/view/clinic_information.dart';
import 'package:clinix_admin_panel/screens/profile_clinic_services_screen/view/clinic_services_screen_view.dart';
import 'package:clinix_admin_panel/screens/profile_opening%20_hours_screen/view/opening_hours_screen_view.dart';
import 'package:clinix_admin_panel/screens/profile_payment_information_screen/view/payment_information_screen_view.dart';
import 'package:clinix_admin_panel/screens/profile_pictures_screen/view/pictures_screen_view.dart';
import 'package:clinix_admin_panel/screens/profile_currency_screen.dart/view/currency_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomPageController extends PageController {
  RxInt index = 0.obs;
  List<Widget> pageView = [
    const ClinicInformation(),
    const ClinicDescriptionView(),
    const AddVideoScreenView(),
    const PicturesScreenView(),
    const CurrencyScreenView(),
    const OpeningHoursScreenView(),
    const ClinicservicesScreenView(),
    const PaymentinformationScreenView(),
  ];
}
