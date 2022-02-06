import 'package:andromeda/models/decorable_image.dart';
import 'package:flutter/material.dart';

class FriendStatus extends DecorableImage {
  final String views;
  final String name;

  FriendStatus({
    required Color color,
    required String imageUrl,
    required this.name,
    required this.views,
  }) : super(color, imageUrl);
}
