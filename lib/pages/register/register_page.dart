import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pc/widgets/login/login_widgets.dart';
import 'package:pc/widgets/register/register_functions.dart';
import 'package:pc/widgets/register/register_widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {

  String username = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();

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
                    const SizedBox(height: 56),
                    buildArrowBackOutline(context),
                    const SizedBox(height: 20),
                    buildRegisterText(),
                    const SizedBox(height: 60),
                    Form(
                      key: _formKey,
                      child: Container(
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
                    ),
                    const SizedBox(height: 30),
                    buildReggisterButton(context)
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }

  Widget buildUsernameTextfield(){
    return TextFormField(
        decoration: InputDecoration(
            hintText: 'label.form.username'.tr(),
            labelText: 'label.form.your_username'.tr(),
            hintStyle: const TextStyle(color: Colors.grey),
            hintMaxLines: 1
        ),
        onChanged: (data){
          username=data;
          // print(username);
        },
        validator: (value) {
          if (value!.trim().isEmpty) {
            return 'enter_valid_username'.tr();
          }
        }
    );
  }

  Widget buildPasswordTextfield(){
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'label.form.password'.tr(),
          labelText: 'label.form.your_password'.tr(),
          hintStyle: const TextStyle(color: Colors.grey),
          hintMaxLines: 1
      ),
      onChanged: (data){
        password=data;
        // print(password);
      },
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'enter_valid_password'.tr();
        }
      }
    );
  }

  Widget buildReggisterButton(BuildContext context){
    return MaterialButton(
      minWidth: 250,
      height: 45,
      child: Text('label.button.signUp'.tr(),style: const TextStyle(color: Colors.white,fontSize: 20)),
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: () {
        userRegister(context,_formKey,username,password);
      },
    );
  }
}


