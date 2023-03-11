import 'package:get/get.dart';
import 'package:mercado/Controllers/create_account_controller.dart';
import 'package:mercado/Modules/Themes/color_theme_global.dart';
import 'package:mercado/Controllers/login_controller.dart';

class LoginBiding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginPageController>(() => LoginPageController(), fenix: true);
    Get.lazyPut<CreateAccountController>(() => CreateAccountController(),
        fenix: true);
    Get.lazyPut<HomePageController>(() => HomePageController(), fenix: true);
    Get.lazyPut<WellcomePageController>(() => WellcomePageController(),
        fenix: true);
    Get.lazyPut<RecoverPasswordController>(() => RecoverPasswordController(),
        fenix: true);
    Get.lazyPut<ColorThemeController>(() => ColorThemeController(),
        fenix: true);
  }
}
