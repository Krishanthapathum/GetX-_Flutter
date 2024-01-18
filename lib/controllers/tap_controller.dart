import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;
  int get x => _x;
  RxInt _z = 0.obs;
  int get z => _z.value;

  RxInt _y = 0.obs;
  RxInt get y => _y;

  void increaseX() {
    _x++;
    update();
  }

  void decreaseX() {
    _x--;
    update();
  }

  void increaseY() {
    _y.value++;
  }

  void decreaseY() {
    _y.value--;
  }

  void totalxy() {
    _z.value = _x + _y.value;
    print(_z);
  }
}
