import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/network_controller.dart';

class NetworkView extends GetView<NetworkController> {
  NetworkController _networkPageController = Get.find<NetworkController>();

  NetworkView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Obx(() => _networkPageController.connectionStatus.value == 1
      //     ? Colors.black
      //     : Colors.white,,)
      appBar: AppBar(
        title: const Text('NetworkPageView'),
        centerTitle: true,
      ),
      body: Center(
          child: Center(
              child: Obx(() => Text(
                    _networkPageController.connectionStatus.value == 1
                        ? "Wifi Connected"
                        : (_networkPageController.connectionStatus.value) == 2
                            ? "Connected to Mobile"
                            : (_networkPageController.connectionStatus.value) ==
                                    2
                                ? "Mobile Conencted"
                                : "No internet",
                    style: TextStyle(
                        fontSize: 35,
                        color:
                            _networkPageController.connectionStatus.value == 1
                                ? Colors.purple
                                : Colors.black),
                  )))),
    );
  }
}
