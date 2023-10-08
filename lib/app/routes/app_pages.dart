import 'package:get/get.dart';

import 'package:irama/app/modules/account_info/bindings/account_info_binding.dart';
import 'package:irama/app/modules/account_info/views/account_info_view.dart';
import 'package:irama/app/modules/booking/bindings/booking_binding.dart';
import 'package:irama/app/modules/booking/views/booking_view.dart';
import 'package:irama/app/modules/daftar/bindings/daftar_binding.dart';
import 'package:irama/app/modules/daftar/views/daftar_view.dart';
import 'package:irama/app/modules/jasa_detail/bindings/jasa_detail_binding.dart';
import 'package:irama/app/modules/jasa_detail/views/jasa_detail_view.dart';
import 'package:irama/app/modules/lupa_password/bindings/lupa_password_binding.dart';
import 'package:irama/app/modules/lupa_password/views/lupa_password_view.dart';
import 'package:irama/app/modules/message/bindings/message_binding.dart';
import 'package:irama/app/modules/message/views/message_view.dart';
import 'package:irama/app/modules/message_detail/bindings/message_detail_binding.dart';
import 'package:irama/app/modules/message_detail/views/message_detail_view.dart';
import 'package:irama/app/modules/notification/bindings/notification_binding.dart';
import 'package:irama/app/modules/notification/views/notification_view.dart';
import 'package:irama/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:irama/app/modules/onboarding/views/onboarding_view.dart';
import 'package:irama/app/modules/profile/bindings/profile_binding.dart';
import 'package:irama/app/modules/profile/views/profile_view.dart';
import 'package:irama/app/modules/semua_categori/bindings/semua_categori_binding.dart';
import 'package:irama/app/modules/semua_categori/views/semua_categori_view.dart';
import 'package:irama/app/modules/splash/bindings/splash_binding.dart';
import 'package:irama/app/modules/splash/views/splash_view.dart';
import 'package:irama/app/modules/welcome/bindings/welcome_binding.dart';
import 'package:irama/app/modules/welcome/views/welcome_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGE,
      page: () => MessageView(),
      binding: MessageBinding(),
    ),
    GetPage(
      name: _Paths.BOOKING,
      page: () => BookingView(),
      binding: BookingBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.DAFTAR,
      page: () => DaftarView(),
      binding: DaftarBinding(),
    ),
    GetPage(
      name: _Paths.LUPA_PASSWORD,
      page: () => LupaPasswordView(),
      binding: LupaPasswordBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT_INFO,
      page: () => AccountInfoView(),
      binding: AccountInfoBinding(),
    ),
    GetPage(
      name: _Paths.JASA_DETAIL,
      page: () => JasaDetailView(),
      binding: JasaDetailBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGE_DETAIL,
      page: () => MessageDetailView(),
      binding: MessageDetailBinding(),
    ),
    GetPage(
      name: _Paths.SEMUA_CATEGORI,
      page: () => SemuaCategoriView(),
      binding: SemuaCategoriBinding(),
    ),
  ];
}
