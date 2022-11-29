import 'package:get/get.dart';
import 'package:getx_intro/user_model.dart';

class UserController extends GetxController {
  Rx<UserModel> user = UserModel().obs;

  void setUsername(String username) {
    // user.update((obj) { obj?.name = username;});

    user.value.name = username;
    user.refresh();
  }

  void setAge(int age){
    // user.update((obj) { obj?.age = age;});
    user.value.age = age;
    user.refresh();
  }
}