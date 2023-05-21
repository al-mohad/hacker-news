import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../widgets/lottie_animation_view.dart';
import '../enums/lottie_animation.dart';

class InternetService extends GetxService {
  Future<InternetService> init() async {
    getConnectivity();

    return this;
  }

  late StreamSubscription subscription;
  var isDeviceConnected = false;

  // @override
  // void onInit() {
  //   getConnectivity();
  //   super.onInit();
  // }

  @override
  void onClose() {
    subscription.cancel();
    super.onClose();
  }

  bool isAlertSet = false;

  getConnectivity() {
    Get.log('Checking internet'.tr);
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      isDeviceConnected = await InternetConnectionChecker().hasConnection;
      if (!isDeviceConnected && isAlertSet == false) {
        showDialogBox();
        isAlertSet = true;
      }
    });
  }

  void showDialogBox() => showCupertinoDialog<String>(
      context: Get.context!,
      builder: (context) => WillPopScope(
            onWillPop: () async => false,
            child: Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Material(
                  child: Container(
                    width: 360,
                    height: 370,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 220,
                          child: LottieAnimationView(
                            animation: LottieAnimation.noInternet,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'It seems your network is down. Please check your internet connection',
                            style: GoogleFonts.poppins(),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () async {
                            Get.back();
                            isAlertSet = false;
                            isDeviceConnected =
                                await InternetConnectionChecker().hasConnection;
                            if (!isDeviceConnected && isAlertSet == false) {
                              showDialogBox();
                              isAlertSet = true;
                            }
                          },
                          child: Container(
                            height: 50,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                'Try Again',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
      // CupertinoAlertDialog(
      //   title: Text('NO CONNECTION'),
      //   content: Text('Please Check your internet connectivity!'),
      //   actions: [
      //     TextButton(
      //         onPressed: () async {
      //           Get.back();
      //           isAlertSet = false;
      //           isDeviceConnected =
      //               await InternetConnectionChecker().hasConnection;
      //           if (!isDeviceConnected && isAlertSet == false) {
      //             showDialogBox();
      //             isAlertSet = true;
      //           }
      //         },
      //         child: Text('Retry'))
      //   ],
      // ),
      );
}
