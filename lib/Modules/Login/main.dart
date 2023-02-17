import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercado/Route/app_pages.dart';
import 'package:mercado/Route/app_routes.dart';

void main() async {
  runApp(
    GetMaterialApp(
      title: 'Baggy',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: Routes.splash,
      color: Colors.white,
    ),
  );
}
