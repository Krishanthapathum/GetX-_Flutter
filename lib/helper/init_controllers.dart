import 'package:get/get.dart';
import 'package:get_tutorial/controllers/list_controller.dart';
import 'package:get_tutorial/controllers/tap_controller.dart';

Future<void> init() async {
  Get.lazyPut(() => TapController());
  Get.lazyPut(() => ListController());
}
