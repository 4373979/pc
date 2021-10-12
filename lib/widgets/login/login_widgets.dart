import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:pc/widgets/login/login_functions.dart';

Widget buildFloatingActionButton(BuildContext context){
  return FloatingActionButton(
    elevation: 0,
    highlightElevation: 0,
    backgroundColor: Colors.transparent,
    child: const Icon(Icons.language, color: Colors.black,size: 30),
    onPressed: (){
      onActionSheetPress(context);
    },
  );
}

Widget buildLoginText(){
  return Row(
    children: [
      const SizedBox(width: 30),
      Text('label.login'.tr(),style: const TextStyle(color: Colors.black,fontSize: 50)),
    ],
  );
}

Widget buildLoginButton(){
  return MaterialButton(
    minWidth: 250,
    height: 45,
    child: Text('label.button.login'.tr(),style: const TextStyle(color: Colors.white,fontSize: 20)),
    color: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    onPressed: () {},
  );
}

Widget buildOtherLoginMethod(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('message.other_login_method'.tr(),style: const TextStyle(color: Colors.grey,fontSize: 14,))
    ],
  );
}

Widget buildOtherLoginButtonGroup(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        icon: const Icon(IconData(0xea0d, fontFamily: "Icons",), size: 40,),
        onPressed: (){

        },
      ),
    ],
  );
}

Widget buildToRegister(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('message.no_account'.tr(),style: const TextStyle(fontSize: 14)),
      TextButton(
        onPressed: (){
          Navigator.of(context).pushReplacementNamed('/register');
        },
        child: Text("message.now_register".tr(),style: const TextStyle(color: Colors.green,fontSize: 14)),
      )
    ],
  );
}

Widget buildForgetPassword(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text(''),
      TextButton(
        onPressed: (){

        },
        child: Text("message.forget_password".tr(),style: const TextStyle(color: Colors.grey,fontSize: 16)),
      ),
    ],
  );
}

