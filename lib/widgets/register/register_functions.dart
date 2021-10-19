import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pc/models/login_model.dart';
import 'package:pc/services/register_service.dart';

void userRegister(BuildContext context,_formKey,username,password) {
  if (_formKey.currentState!.validate()) {
    LoginModel loginModel = LoginModel(username, password);
    RegisterService registerService = RegisterService();
    registerService
        .registerRequest(loginModel).then((value) =>loginVerify(context,value)).catchError((error) {
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text('message.register_failed'.tr())));
    });
  }
}

void loginVerify(BuildContext context,value){
  if(value=="success"){
    Fluttertoast.showToast(
        msg: 'message.register_success'.tr(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
    Navigator.of(context).pushReplacementNamed('/login');
  }else{
    Fluttertoast.showToast(
        msg: 'message.register_failed'.tr(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}