import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_flip_native/test_flip_native.dart';
import 'dart:async';


import 'FlutterPageView.dart';

void main() => runApp(NativePageViewController.getInitialWidget(SimplyPageView.builder) ?? MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  void initState() {
    _launchNativePageView();
    super.initState();
  }

  Future<void> _launchNativePageView() async {
    NativePageViewController.show(5, (pageIndex) {
      return "Page Content --- $pageIndex";
    }, pageRect: Rect.zero);
    setState(() {});
  }

  void _launchFlutterPageView(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return FlutterPageView();
    }));
  }


  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red,);

        // Scaffold(
        //     appBar: AppBar(
        //       title: const Text('Plugin example app'),
        //     ),
        //     body: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: <Widget>[
        //           Expanded(
        //             child: Center(
        //                 child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.center,
        //                     children: <Widget>[
        //                       Text('Running on: $_platformVersion\n'),
        //                       Padding(
        //                         padding: const EdgeInsets.all(18.0),
        //                         child:  Builder(builder: (context) =>
        //                             ElevatedButton(
        //                                 child: const Text('Flutter PageView'),
        //                                 onPressed: () {
        //                                   _launchFlutterPageView(context);
        //                                   Navigator.push(context,
        //                                       MaterialPageRoute(builder: (context) {
        //                                         return FlutterPageView();
        //                                       }));
        //                                 })),
        //                       ),
        //                       Padding(
        //                         padding: const EdgeInsets.all(18.0),
        //                         child: ElevatedButton(
        //                             child: Text('Native PageViewController'),
        //                             onPressed: _launchNativePageView),
        //                       ),
        //                     ])),
        //           )
        //         ]))
    // );

  }


  static Size getScreenSize() {
    final Size size = window.physicalSize;
    final devicePixelRatio = window.devicePixelRatio;
    final double screenWidth = size.width / devicePixelRatio;
    final double screenHeight = size.height / devicePixelRatio;

    return Size(screenWidth, screenHeight);
  }


  static Size getTargetSize() {
    final Size screenSize = getScreenSize();
    const double targetRatio = 2048.0 / 2836.0;

    if (screenSize.aspectRatio < targetRatio) {
      return Size(screenSize.width, screenSize.height*targetRatio);
    } else {
      return Size(screenSize.width/targetRatio, screenSize.height);
    }
  }

  static Rect getPageRect() {
    final Size screenSize = getScreenSize();
    final Size targetSize = getTargetSize();

    print("screenSize=$screenSize, targetSize=$targetSize");
    final rect = Rect.fromLTWH(
        (screenSize.width - targetSize.width)/2,
        (screenSize.height - targetSize.height)/2,
        targetSize.width,
        targetSize.height
    );

    print("pageRect=$rect");

    return rect;

  }
}
