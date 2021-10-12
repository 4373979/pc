import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pc/widgets/login/login_widgets.dart';
import 'package:pc/widgets/register/register_widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buildFloatingActionButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      body:Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 90),
                    buildRegisterText(),
                    const SizedBox(height: 60),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 30, 30, 20),
                      child: Column(
                        children: <Widget>[
                          buildUsernameTextfield(),
                          const SizedBox(height: 30),
                          buildPasswordTextfield(),
                          const SizedBox(height: 80),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    buildRegisterButton(),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}

Widget buildUsernameTextfield(){
  return TextField(
    decoration: InputDecoration(
        hintText: 'label.form.username'.tr(),
        labelText: 'label.form.your_username'.tr(),
        hintStyle: const TextStyle(color: Colors.grey),
        hintMaxLines: 1
    ),
  );
}

Widget buildPasswordTextfield(){
  return TextField(
    decoration: InputDecoration(
        hintText: 'label.form.password'.tr(),
        labelText: 'label.form.your_password'.tr(),
        hintStyle: const TextStyle(color: Colors.grey),
        hintMaxLines: 1
    ),
  );
}
