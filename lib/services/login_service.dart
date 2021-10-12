
import 'package:dio/dio.dart';
import 'package:pc/models/login_model.dart';


class UserService {
  Future<String?> loginRequest(LoginModel loginModel) async {

    String serverIp = "http://101.34.246.130";
    // print("111111"+loginModel.username+":"+loginModel.password);
    var options = BaseOptions(
      baseUrl: serverIp,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );
    Dio dio = Dio(options);
    Response response = await dio.post("/phoneLoginVerify", data: {
      "username": loginModel.username,
      "password": loginModel.password
    });
    String encoded = response.data.toString();
    return encoded;
  }
}
