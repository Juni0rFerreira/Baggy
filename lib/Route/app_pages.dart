import 'package:get/get.dart';
import 'package:mercado/Controllers/Bidings/login_bidings.dart';
import 'package:mercado/Modules/Login/screen/create_account.dart';
import 'package:mercado/Modules/Login/screen/home_page.dart';
import 'package:mercado/Modules/Login/screen/login_page.dart';
import 'package:mercado/Modules/Login/screen/recover_password.dart';
import 'package:mercado/Modules/Login/screen/splash.dart';
import 'package:mercado/Modules/Login/screen/wellcome_page.dart';
import 'package:mercado/Route/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => const Splash(),
      binding: LoginBiding(),
    ),
    GetPage(
      name: Routes.loginpage,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: Routes.recoverpassword,
      page: () => const RecoverPassword(),
    ),
    GetPage(
      name: Routes.wellcomepage,
      page: () => const WellcomePage(),
    ),
    GetPage(
      name: Routes.createacconut,
      page: () => const CreateAccount(),
    ),
    GetPage(
      name: Routes.homepage,
      page: () => const HomePage(),
    ),
  ];
}
