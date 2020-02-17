import 'package:dummy_task/constants/string_constant.dart';
import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(StringConstant.favorites),
      ),
    );
  }
}
