import 'package:dummy_task/constants/string_constant.dart';
import 'package:flutter/material.dart';
class Bag extends StatefulWidget {
  @override
  _BagState createState() => _BagState();
}

class _BagState extends State<Bag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(StringConstant.bag),
      ),
    );
  }
}
