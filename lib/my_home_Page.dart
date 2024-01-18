import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_tutorial/controllers/tap_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //dependency injection
    TapController tapController = Get.put(TapController());
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<TapController>(
            builder: (tapController) {
              return Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 19, 211, 205),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    tapController.x.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              );
            },
          ),
          GestureDetector(
            onTap: () {
              tapController.increaseX();
            },
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 19, 211, 205),
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
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 19, 211, 205),
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
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 19, 211, 205),
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
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 19, 211, 205),
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
