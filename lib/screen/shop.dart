import 'package:dummy_task/constants/string_constant.dart';
import 'package:flutter/material.dart';
class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(StringConstant.shop),
      ),
    );

  }
}
