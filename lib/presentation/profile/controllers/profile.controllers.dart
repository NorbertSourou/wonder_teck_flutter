import 'package:get/get.dart';
import 'package:projet_test/domain/entities/dog_walker.dart';

class ProfileController extends GetxController {
  var selectedWalker = DogWalker.empty().obs;

  @override
  void onInit() {
    super.onInit();
    selectedWalker.value = Get.arguments as DogWalker;
  }
}
