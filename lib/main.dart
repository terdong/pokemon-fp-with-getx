import 'package:device_preview/device_preview.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DevicePreview(
    defaultDevice: Devices.android.samsungGalaxyS20,
    builder: (context) => GetMaterialApp(
      title: 'Pokemon App',
      debugShowCheckedModeBanner: true,
      initialRoute: Routes.INITIAL,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      useInheritedMediaQuery: true, // for working DevicePreview
      scrollBehavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),
      getPages: AppPages.pages,
      /* theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        appBarTheme: AppBarTheme(
            color: Colors.deepOrange,
            textTheme: TextTheme(
                headline6: GoogleFonts.exo2(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )))), */
    ), // Wrap your app
  ));
}
