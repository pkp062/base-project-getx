part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const SPLASH = _Paths.SPLASH;
  static const AUTH = _Paths.AUTH;
  static const HOME = _Paths.HOME;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;
}

abstract class _Paths {
  static const SPLASH = '/';
  static const AUTH = '/auth';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const HOME = '/home';
}
