
import 'package:dio/dio.dart';
import 'package:pc/models/login_model.dart';


class RegisterService {
  Future<String?> registerRequest(LoginModel loginModel) async {

    // String serverIp = "http://101.34.246.130";
    String serverIp = "http://10.0.2.2:8080";
    // print("111111"+loginModel.username+":"+loginModel.password);
    var options = BaseOptions(
      baseUrl: serverIp,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );
    Dio dio = Dio(options);
    Response response = await dio.post("/users", data: {
      "username": loginModel.username,
      "password": loginModel.password
    });
    String encoded = response.data.toString();
    print(encoded);
    return encoded;
  }
}
