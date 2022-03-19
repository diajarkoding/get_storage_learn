import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  RxInt count = 0.obs;
  final box = GetStorage();

  void increment() {
    count++;
    simpanData();
  }

  void decrement() {
    count--;
    simpanData();
  }

  void simpanData() async {
    if (box.read('count') != null) {
      await box.remove('count');
    }
    await box.write('count', count.value);
  }

  void bacaData() async {
    if (box.read('count') != null) {
      count.value = box.read('count')! as int;
    }
  }

  void resetData() async {
    if (box.read('count') != null) {
      await box.remove('count');
      count.value = 0;
    }
  }

  @override
  void onInit() {
    bacaData();
    super.onInit();
  }
}
