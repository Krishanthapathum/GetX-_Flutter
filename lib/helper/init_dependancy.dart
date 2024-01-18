import 'package:get/get.dart';
import 'package:get_tutorial/controllers/list_controller.dart';
import 'package:get_tutorial/controllers/tap_controller.dart';

class initDep implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TapController());
    Get.lazyPut(() => ListController());
  }
}
