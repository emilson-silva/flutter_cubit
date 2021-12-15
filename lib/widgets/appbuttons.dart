import 'package:flutter/material.dart';
import 'package:flutter_cubit/constants/colors.dart';

class AppButtons extends StatefulWidget {
  const AppButtons({Key? key}) : super(key: key);

  @override
  _AppButtonsState createState() => _AppButtonsState();
}

class _AppButtonsState extends State<AppButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.buttonBackground,
      ),
    );
  }
}
