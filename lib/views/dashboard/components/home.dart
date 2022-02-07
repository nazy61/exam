import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../views/views.dart';
import '../../../utils/utils.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBackgroudWidgets(),
        _buildTopWidgets(),
      ],
    );
  }

  Widget _buildTopWidgets() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            SizedBox(height: 20.0),
            _buildExamCodeContainer(),
            SizedBox(height: 20.0),
            _buildRecentExamColumn(),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentExamColumn() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildRecentExamHeader(),
            _buildRecentExamItem(
              title: "English",
              icon: FontAwesomeIcons.facebookF,
              color: Colors.yellow[600],
            ),
            _buildRecentExamItem(
              title: "Mathematics",
              icon: FontAwesomeIcons.divide,
              color: Colors.blue[300],
            ),
            _buildRecentExamItem(
              title: "Physics",
              icon: FontAwesomeIcons.vial,
              color: Colors.red[300],
            ),
            _buildRecentExamItem(
              title: "Computer Science",
              icon: FontAwesomeIcons.laptop,
              color: Colors.green[300],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentExamItem({
    required String title,
    required IconData icon,
    required Color? color,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
        child: Container(
          width: double.infinity,
          child: Row(
            children: [
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: FaIcon(icon),
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: textStyle30Bold),
                    Text("15/15 Questions", style: textStyle20Gray),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRecentExamHeader() {
    return Text("Recent Exams", style: textStyle30Bold);
  }

  Widget _buildExamCodeContainer() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Enter your exam code", style: textStyle30Bold),
              Text("To Start your exam", style: textStyle20Gray),
              SizedBox(height: 20.0),
              _buildExamCodeTextField(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExamCodeTextField() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[100],
              labelText: "Ex: c5095",
              labelStyle: textStyle20,
            ),
          ),
        ),
        TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 20, horizontal: 35.0),
            ),
            backgroundColor: MaterialStateProperty.all(
              AppCustomColors.primaryColor,
            ),
          ),
          onPressed: () => Get.to(() => QuestionScreen()),
          child: Text("Enter", style: textStyle20WhiteBold),
        )
      ],
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Quick Exams", style: textStyle50BoldWhite),
            Text("be successful!", style: textStyle20White),
          ],
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          minRadius: 25.0,
          maxRadius: 25.0,
          child: Center(
            child: Text("QE", style: textStyle30PrimaryColorBold),
          ),
        ),
      ],
    );
  }

  Widget _buildBackgroudWidgets() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200.0,
          color: AppCustomColors.primaryColor,
        )
      ],
    );
  }
}
