import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';



Widget buildArrowBackOutline(BuildContext context){
  return Row(
    children: [
      IconButton(
        icon: const Icon(Ionicons.arrow_back_outline),
        iconSize: 30,
        color: Colors.black,
        onPressed: (){
          Navigator.of(context).pushReplacementNamed('/login');                          },
      )
    ],
  );
}

Widget buildRegisterText(){
  return Row(
    children: [
      const SizedBox(width: 30),
      Text('label.register'.tr(),style: const TextStyle(color: Colors.black,fontSize: 50)),
    ],
  );
}

Widget buildRegisterButton(){
  return MaterialButton(
    minWidth: 250,
    height: 45,
    child: Text('label.button.signUp'.tr(),style: const TextStyle(color: Colors.white,fontSize: 20)),
    color: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    onPressed: () {},
  );
}