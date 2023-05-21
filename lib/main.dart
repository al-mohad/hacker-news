import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacker_news/app/data/services/internet_service.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut<InternetService>(() => InternetService());

  runApp(
    GetMaterialApp(
      title: "Hacker News",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        primaryColor: Colors.blueGrey,
      ),
      themeMode: ThemeMode.dark,
    ),
  );
}
