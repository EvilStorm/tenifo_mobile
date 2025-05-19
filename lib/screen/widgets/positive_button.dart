import 'package:court/utils/size_scale.dart';
import 'package:flutter/material.dart';

class PositiveButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const PositiveButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent,
        padding: EdgeInsets.symmetric(
          horizontal: SizeScale.instance.basicSpaceAddHalf,
          vertical: SizeScale.instance.basicSpace,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeScale.instance.basicSpace),
        ),
      ),
      child: Text(
        text,
        style: SizeScale.instance.textScaleStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
