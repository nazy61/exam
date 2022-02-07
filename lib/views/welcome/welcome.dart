import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../utils/utils.dart';
import '../views.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppCustomColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildWelcomeHeader(),
              SizedBox(height: 20.0),
              _buildWelcomeMessage(),
              Expanded(child: Container()),
              _buildButton(),
              SizedBox(height: 20.0),
              _buildDivider(),
              SizedBox(height: 20.0),
              _buildSignUpIcons(),
              SizedBox(height: 20.0),
              _buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Center(child: FaIcon(FontAwesomeIcons.facebookF)),
        ),
        SizedBox(width: 20.0),
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Center(child: FaIcon(FontAwesomeIcons.google)),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 2.0,
            color: Colors.blueGrey,
          ),
        ),
        SizedBox(width: 20.0),
        Text(
          "or Sign Up with",
          style: textStyle20Gray,
        ),
        SizedBox(width: 20.0),
        Expanded(
          child: Container(
            height: 2.0,
            color: Colors.blueGrey,
          ),
        ),
      ],
    );
  }

  Widget _buildButton() {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
      ),
      onPressed: () => Get.to(() => CreateScreen()),
      child: Text('Create an Account', style: textStyle30Bold),
    );
  }

  Widget _buildWelcomeHeader() {
    return Text(
      "Welcome to Quick Exams!",
      style: textStyle50Bold,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildWelcomeMessage() {
    return Text(
      "Login into your account to access your exams form the semester. Our App is Frendly and Easy to use.",
      style: textStyle20Gray,
      textAlign: TextAlign.justify,
    );
  }

  Widget _buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "I already have an account!",
          style: textStyle20Gray,
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: () => Get.to(() => LoginScreen()),
          child: Text("Login", style: textStyle20PrimaryColorBold),
        )
      ],
    );
  }
}
