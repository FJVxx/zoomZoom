//para todo lo demas
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoom_zoom/controller/zoom_controller.dart';
import 'package:zoom_zoom/pages/zoom.dart';

void main() {
  Get.lazyPut(() => ZoomController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoom Act',
      initialRoute: '/zoom',
      routes: {
        //por aqui las rutas
        '/zoom': (context) => ZoomPage()
      },
    );
  }
}
