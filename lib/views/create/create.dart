import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../utils/utils.dart';
import '../views.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppCustomColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildHeaderText(),
                _buildMessageText(),
                SizedBox(height: 20.0),
                _buildTextField(
                  label: "Enter Your Email Address",
                  prefixIcon: Icons.email,
                  suffixIcon: null,
                  obscureText: false,
                ),
                SizedBox(height: 10.0),
                _buildTextField(
                  label: "Enter Your Name",
                  prefixIcon: Icons.account_circle_rounded,
                  suffixIcon: null,
                  obscureText: false,
                ),
                SizedBox(height: 10.0),
                _buildTextField(
                  label: "Enter Your Student Number",
                  prefixIcon: Icons.document_scanner_rounded,
                  suffixIcon: null,
                  obscureText: false,
                ),
                SizedBox(height: 10.0),
                _buildTextField(
                  label: "Enter Your Password",
                  prefixIcon: Icons.lock,
                  suffixIcon: Icons.remove_red_eye,
                  obscureText: true,
                ),
                SizedBox(height: 10.0),
                _buildTextField(
                  label: "Confirm Password",
                  prefixIcon: Icons.lock,
                  suffixIcon: Icons.remove_red_eye,
                  obscureText: true,
                ),
                SizedBox(height: 30.0),
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
      ),
    );
  }

  Widget _buildTextField({
    required IconData? prefixIcon,
    required String? label,
    required IconData? suffixIcon,
    required bool obscureText,
  }) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        prefixIcon: Icon(prefixIcon, color: AppCustomColors.primaryColor),
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        labelStyle: textStyle20,
      ),
    );
  }

  Widget _buildMessageText() {
    return Text(
      "Create an account so you can use Quick Exams!",
      style: textStyle20Gray,
      textAlign: TextAlign.justify,
    );
  }

  Widget _buildHeaderText() {
    return Text(
      "Create an Account",
      style: textStyle40Bold,
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
      onPressed: () => Get.offAll(() => DashboardScreen()),
      child: Text('Next', style: textStyle30Bold),
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
          child: Text("Sign in", style: textStyle20PrimaryColorBold),
        )
      ],
    );
  }
}
