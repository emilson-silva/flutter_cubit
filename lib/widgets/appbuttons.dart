import 'package:flutter/material.dart';
import 'package:flutter_cubit/constants/colors.dart';

class AppButtons extends StatefulWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
   AppButtons({
    Key? key,
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
    required this.size,
  }) : super(key: key);

  @override
  _AppButtonsState createState() => _AppButtonsState();
}
class _AppButtonsState extends State<AppButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.buttonBackground,
      ),
    );
  }
}
