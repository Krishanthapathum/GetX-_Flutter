import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_tutorial/controllers/tap_controller.dart';
import 'package:get_tutorial/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController tapController = Get.find();
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // GetBuilder<TapController>(
          //   builder: (_) {
          //     return Container(
          //       margin: EdgeInsets.all(20),
          //       width: double.maxFinite,
          //       height: 100,
          //       decoration: BoxDecoration(
          //         color: Color.fromARGB(255, 19, 211, 205),
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       child: Center(
          //         child: Text(
          //           tapController.x.toString(),
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 20,
          //           ),
          //         ),
          //       ),
          //     );
          //   },
          // ),
          GestureDetector(
            onTap: () {
              Get.to(() => ThirdPage());
            },
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 30, 61, 60),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "tap",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
