import 'package:bloc_clean_coding/config/color/app_colors.dart';
import 'package:flutter/material.dart';

class RoundedBUtton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;
  final double width;
  const RoundedBUtton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.width = 200});

  @override
  State<RoundedBUtton> createState() => _RoundedBUttonState();
}

class _RoundedBUttonState extends State<RoundedBUtton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        height: 40,
        width: widget.width,
        decoration: BoxDecoration(
            color: AppColors.buttonColor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(child: Text(widget.title)),
      ),
    );
  }
}
