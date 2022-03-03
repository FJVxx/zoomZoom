import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoom_zoom/controller/zoom_controller.dart';

class ZoomPage extends StatelessWidget {
  ZoomPage({Key? key}) : super(key: key);
  final zoomController = Get.find<ZoomController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('ZoomZoom'),
      ),
      body: Center(
        child: GetBuilder<ZoomController>(
          builder: (zoomController) => CircleAvatar(
            radius: zoomController.i,
            backgroundImage: const NetworkImage(
                "https://upload.wikimedia.org/wikipedia/commons/f/f1/2ChocolateChipCookies.jpg"),
          ),
        ),
      ),
      floatingActionButton: GetBuilder<ZoomController>(
          builder: (zoomController) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      zoomController.zoomIn();
                    },
                    backgroundColor: Colors.red,
                    child: const Icon(Icons.plus_one),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      zoomController.zoomOut();
                    },
                    backgroundColor: Colors.red,
                    child: const Icon(Icons.exposure_minus_1),
                  ),
                ],
              )),
    );
  }
}
