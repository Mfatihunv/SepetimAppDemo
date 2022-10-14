import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';
import 'package:stajson/core/AltMenu.dart';
import 'package:stajson/pages/categories.dart';

import '../palette.dart';
import '../widgets/bground_image.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Backgroundimage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  const Center(
                    child: Text(
                      'Sepetim',
                      style: LoginHeading,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        TextInput(
                          icon: FontAwesomeIcons.solidEnvelope,
                          hint: 'Email',
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.next,
                        ),
                        PasswordInput(
                          icon: FontAwesomeIcons.lock,
                          hint: 'Şifre',
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.done,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Parolamı Unuttum ?',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 200,
                        decoration: const ShapeDecoration(
                          shape: StadiumBorder(),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey[600]?.withOpacity(0.5)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Text('Giriş Yap'),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AltMenu()),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(1),
                        child: const Text(
                          'Veya',
                          style: kbodyText,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SignInButton(
                          buttonType: ButtonType.google,
                          onPressed: () {
                            print('click');
                          }),
                      SignInButton(
                          buttonType: ButtonType.facebook,
                          onPressed: () {
                            print('click');
                          }),
                      SignInButton(
                          buttonType: ButtonType.twitter,
                          onPressed: () {
                            print('click');
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.white, width: 0.2))),
                        padding: const EdgeInsets.all(1),
                        child: const Text(
                          'Hesabın yok mu ? Hemen Kayıt Ol!',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[600]?.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16)),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            labelText: hint,
            hintStyle: kbodyText,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          style: kbodyText,
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[600]?.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16)),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            labelText: hint,
            hintStyle: kbodyText,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          obscureText: true,
          style: kbodyText,
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
