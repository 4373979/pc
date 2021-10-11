import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pc/widgets/login/login_widgets.dart';

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
                    Row(
                      children: [
                        const SizedBox(width: 30),
                        Text('label.register'.tr(),style: const TextStyle(color: Colors.black,fontSize: 50)),
                      ],
                    ),
                    const SizedBox(height: 60),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 30, 30, 20),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'label.form.username'.tr(),
                                labelText: 'label.form.your_username'.tr(),
                                hintStyle: const TextStyle(color: Colors.grey),
                                hintMaxLines: 1
                            ),
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'label.form.password'.tr(),
                                labelText: 'label.form.your_password'.tr(),
                                hintStyle: const TextStyle(color: Colors.grey),
                                hintMaxLines: 1
                            ),
                          ),
                          const SizedBox(height: 80),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    MaterialButton(
                      minWidth: 250,
                      height: 45,
                      child: Text('label.button.signUp'.tr(),style: const TextStyle(color: Colors.white,fontSize: 20)),
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}


