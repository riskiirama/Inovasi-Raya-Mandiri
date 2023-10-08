part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH = _Paths.SPLASH;
  static const HOME = _Paths.HOME;
  static const LOGIN = _Paths.LOGIN;
  static const NOTIFICATION = _Paths.NOTIFICATION;
  static const WELCOME = _Paths.WELCOME;
  static const PROFILE = _Paths.PROFILE;
  static const MESSAGE = _Paths.MESSAGE;
  static const BOOKING = _Paths.BOOKING;
  static const DAFTAR = _Paths.DAFTAR;
  static const LUPA_PASSWORD = _Paths.LUPA_PASSWORD;
  static const ONBOARDING = _Paths.ONBOARDING;
  static const ACCOUNT_INFO = _Paths.ACCOUNT_INFO;
  static const JASA_DETAIL = _Paths.JASA_DETAIL;
  static const MESSAGE_DETAIL = _Paths.MESSAGE_DETAIL;
  static const SEMUA_CATEGORI = _Paths.SEMUA_CATEGORI;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH = '/splash';
  static const HOME = '/home';
  static const LOGIN = '/login';
  static const NOTIFICATION = '/notification';
  static const WELCOME = '/welcome';
  static const PROFILE = '/profile';
  static const MESSAGE = '/message';
  static const BOOKING = '/booking';
  static const DAFTAR = '/daftar';
  static const LUPA_PASSWORD = '/lupa-password';
  static const ONBOARDING = '/onboarding';
  static const ACCOUNT_INFO = '/account-info';
  static const JASA_DETAIL = '/jasa-detail';
  static const MESSAGE_DETAIL = '/message-detail';
  static const SEMUA_CATEGORI = '/semua-categori';
}
