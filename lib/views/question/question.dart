import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../utils/utils.dart';
import '../../widgets/widgets.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  String _value = "Most Expensive";

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
                _buildAppBar(),
                SizedBox(height: 20.0),
                _buildQuestionCounter(),
                SizedBox(height: 10.0),
                _buildQuestionSection(),
                SizedBox(height: 20.0),
                _buildOptionSection(),
                SizedBox(height: 20.0),
                _buildButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOptionSection() {
    return Column(
      children: [
        _buildOptionCard(
          value: "Most Expensive",
        ),
        _buildOptionCard(
          value: "More Expensive",
        ),
        _buildOptionCard(
          value: "Expensivest",
        ),
        _buildOptionCard(
          value: "As Expensive",
        ),
      ],
    );
  }

  Widget _buildButton() {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
      ),
      onPressed: () {},
      child: Text('Next', style: textStyle30Bold),
    );
  }

  Widget _buildOptionCard({
    required String value,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _value = value;
        });
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
          width: double.infinity,
          color: _value == value ? AppCustomColors.primaryColor : Colors.white,
          child: Row(
            children: [
              CustomRadioWidget(
                value: value,
                groupValue: _value,
                onChanged: (String? value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
              Text(
                value,
                style: _value == value ? textStyle30BoldWhite : textStyle30Bold,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuestionSection() {
    return Text(
      "Motor racing is the _________ sport in the world.",
      style: textStyle50Bold,
    );
  }

  Widget _buildQuestionCounter() {
    return Text("Question 6/15", style: textStyle30BoldStatusColor);
  }

  Widget _buildAppBar() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            FontAwesomeIcons.caretSquareLeft,
            color: AppCustomColors.primaryColor,
          ),
        ),
        Expanded(
          child: Center(
            child: Text("Mathematics", style: textStyle30Bold),
          ),
        ),
        IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            FontAwesomeIcons.questionCircle,
            color: AppCustomColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
