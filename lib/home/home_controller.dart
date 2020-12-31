import 'package:get/get.dart';

import 'home_model.dart';
import 'home_repository.dart';

class Controller extends GetxController {
  static Controller get to => Get.find();

  ApiModel data;

  void fetchDataFromApi() async {
    Api api = Api();
    final response = await api.fetchData();

    if (response == null) {
      Get.snackbar('Erro', 'Não foi possível conectar ao servidor');
    } else {
      data = response;
      update();
    }
  }
}
