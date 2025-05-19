import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SizeScale {
  static final SizeScale _instance = SizeScale._internal();

  late final double _scale;
  static SizeScale get instance => _instance;

  bool _initialized = false;
  SizeScale._internal();

  void init(BuildContext context) {
    if (_initialized) return;

    final width = MediaQuery.of(context).size.width;

    if (kIsWeb) {
      _instance._scale = 1.4;
    } else if (width > 1000) {
      _instance._scale = 1.2;
    } else if (width > 600) {
      _instance._scale = 1.0;
    } else {
      _instance._scale = 0.8;
    }
    _initialized = true;
  }

  double get basicSpace => 8 * _instance._scale;
  double get basicSpaceAddHalf => 12 * _instance._scale;

  double sizeScale(size) {
    return size * _instance._scale;
  }

  TextStyle textScaleStyle({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return TextStyle(
      fontSize: fontSize ?? 22 * _instance._scale,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? Colors.black87,
    );
  }

  TextStyle get subtitle => TextStyle(
    fontSize: 16 * _instance._scale,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );

  TextStyle get body =>
      TextStyle(fontSize: 14 * _instance._scale, color: Colors.black87);

  TextStyle get label =>
      TextStyle(fontSize: 12 * _instance._scale, color: Colors.grey);

  TextStyle get button => TextStyle(
    fontSize: 16 * _instance._scale,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  TextStyle get error => TextStyle(
    fontSize: 14 * _instance._scale,
    color: Colors.red,
    fontWeight: FontWeight.w600,
  );
}
