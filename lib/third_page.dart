import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_tutorial/controllers/list_controller.dart';
import 'package:get_tutorial/controllers/tap_controller.dart';
import 'package:get_tutorial/my_home_Page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TapController tapController = Get.find();
    // ListController listController = Get.put(ListController());
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 141, 64, 203),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    //way 1
                    "Total value :  " + Get.find<TapController>().z.toString(),
                    //way 2
                    // tapController.x.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 113, 213, 63),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    //way 1
                    "Y value :  " +
                        Get.find<TapController>().y.value.toString(),
                    //way 2
                    // tapController.x.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => MyHomePage());
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 141, 64, 203),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    //way 1
                    "X value :  " + Get.find<TapController>().x.toString(),
                    //way 2
                    // tapController.x.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Get.to(() => MyHomePage());
                Get.find<TapController>().increaseY();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 141, 64, 203),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    //way 1
                    "Increase Y",
                    //way 2
                    // tapController.x.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Get.to(() => MyHomePage());
                Get.find<TapController>().totalxy();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 141, 64, 203),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    //way 1
                    "Total X+Y",
                    //way 2
                    // tapController.x.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Get.to(() => MyHomePage());
                Get.find<ListController>()
                    .setValues(Get.find<TapController>().z);
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 141, 64, 203),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    //way 1
                    "Save Total",
                    //way 2
                    // tapController.x.toString(),
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
      ),
    );
  }
}
