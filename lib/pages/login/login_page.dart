import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pc/widgets/login/login_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                        Text('label.login'.tr(),style: const TextStyle(color: Colors.black,fontSize: 50)),
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
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(''),
                              TextButton(
                                onPressed: (){

                                },
                                child: Text("message.forget_password".tr(),style: const TextStyle(color: Colors.grey,fontSize: 16)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    MaterialButton(
                      minWidth: 250,
                      height: 45,
                      child: Text('label.button.login'.tr(),style: const TextStyle(color: Colors.white,fontSize: 20)),
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(height: 26),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('message.other_login_method'.tr(),style: const TextStyle(color: Colors.grey,fontSize: 14,))
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(IconData(0xea0d, fontFamily: "Icons",), size: 40,),
                          onPressed: (){

                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('message.no_account'.tr(),style: const TextStyle(fontSize: 14)),
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed('/register');
                          },
                          child: Text("message.now_register".tr(),style: const TextStyle(color: Colors.green,fontSize: 14)),
                        )
                      ],
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


