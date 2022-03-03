import 'package:get/get.dart';

class ZoomController extends GetxController {
  //int i = 10;
  double i = 150;

  void zoomIn() {
    i = i + 30;
    update();
  }

  void zoomOut() {
    i = i - 30;
    update();
  }
}
