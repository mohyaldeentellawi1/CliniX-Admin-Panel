// ignore_for_file: prefer_const_constructors

import 'package:clinix_admin_panel/screens/calender_screen/view/calendar.dart';
import 'package:clinix_admin_panel/screens/account_screen/view/account_screen_view.dart';
import 'package:clinix_admin_panel/screens/doctors_screen/view/doctors_screen_view.dart';
import 'package:clinix_admin_panel/screens/faq_screen/view/faq_screen_view.dart';
import 'package:clinix_admin_panel/screens/profile_%20accreditations_screen/view/accreditations_screen_view.dart';
import 'package:clinix_admin_panel/screens/profile_Insurance_screen/view/Insurance_screen_view.dart';
import 'package:clinix_admin_panel/screens/profile_add_video_screen/view/add_video_screen_view.dart';
import 'package:clinix_admin_panel/screens/profile_clinic_description/view/clinic_description_view.dart';
import 'package:clinix_admin_panel/screens/profile_clinic_information/view/clinic_information.dart';
import 'package:clinix_admin_panel/screens/profile_clinic_services_screen/view/clinic_services_screen_view.dart';
import 'package:clinix_admin_panel/screens/profile_currency_screen.dart/view/currency_screen_view.dart';
import 'package:clinix_admin_panel/screens/profile_languages_screen/view/profile_languages_screen_view.dart';
import 'package:clinix_admin_panel/screens/profile_opening%20_hours_screen/view/opening_hours_screen_view.dart';
import 'package:clinix_admin_panel/screens/profile_payment_information_screen/view/payment_information_screen_view.dart';
import 'package:clinix_admin_panel/screens/profile_peforafter_screen/view/befor_after_screen_view.dart';
import 'package:clinix_admin_panel/screens/profile_pictures_screen/view/pictures_screen_view.dart';
import 'package:clinix_admin_panel/screens/profile_premises_screen/view/profile_premises_screen_view.dart';
import 'package:clinix_admin_panel/screens/travel_services_screen/view/travel_services_screen_view.dart';
import 'package:clinix_admin_panel/screens/treatment_screen/view/treatment_screen_view.dart';
import 'package:get/get.dart';

class SideBarController extends GetxController {
  RxInt index = 0.obs;

  var page = [
    EventCalendar(), //0
    AccountScreenView(),
    ClinicInformationScreenView(),
    ClinicDescriptionScreenView(),
    AddVideoScreenView(),
    PicturesScreenView(),
    BeforAfterScreenView(),
    CurrencyScreenView(),
    OpeningHoursScreenView(),
    PremisesScreenView(),
    ClinicservicesScreenView(),
    PaymentinformationScreenView(),
    TravelservicesScreenView(),
    InsuranceScreenView(),
    ProfileLanguagesScreenView(),
    AccreditationsScreenView(),
    TreatmentScreenView(),
    DoctorsScreenView(),
    FaqScreenView(),
  ];
}
