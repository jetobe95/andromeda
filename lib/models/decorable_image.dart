import 'package:flutter/material.dart';

class DecorableImage {
  final Color _color;
  final String _image;

  DecorableImage(this._color, this._image);

  Color get color => _color;
  String get image => _image;
}
