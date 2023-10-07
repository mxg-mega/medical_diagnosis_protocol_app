import 'package:flutter/material.dart';

class Tile {
  final String tileName;
  final String tileDescription;
  final Widget route;

  const Tile({
    required this.tileName,
    required this.tileDescription,
    required this.route,
  });
}
