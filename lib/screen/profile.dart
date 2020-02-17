import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:dummy_task/config/theme.dart';
import 'package:dummy_task/constants/string_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatelessWidget {
  final List<Widget> tabs = <Widget>[
    Padding(
      padding: const EdgeInsets.symmetric(horizontal:AppSizes.sidePadding),
      child: Tab(text: StringConstant.delivered),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal:AppSizes.sidePadding),
      child: Tab(text: StringConstant.processing),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal:AppSizes.sidePadding),
      child: Tab(text: StringConstant.cancelled),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.sidePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(AppSizes.sidePadding),
              child: Text(
                StringConstant.my_orders,
                style: TextStyle(
                    fontSize: AppSizes.titleFontSize,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: AppColors.white,
              labelPadding: EdgeInsets.symmetric(horizontal: 4),
              unselectedLabelColor: AppColors.black,
              indicator: BubbleTabIndicator(
                indicatorHeight: AppSizes.indicatorHeight,
                indicatorColor: Colors.black,
                tabBarIndicatorSize: TabBarIndicatorSize.tab,
              ),
              tabs: tabs,
              unselectedLabelStyle: TextStyle(
                fontSize: AppSizes.tabTitleFontSize,
                color: AppColors.black,
              ),
              // labelColor: MyTheme.Colors.nero_black,
              labelStyle: TextStyle(
                  fontSize: AppSizes.tabTitleFontSize, color: AppColors.white),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal:AppSizes.sidePadding),
                child: TabBarView(
                  children: <Widget>[
                    Delivered(),
                    Delivered(),
                    Delivered(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Delivered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.card_radius),
            ),
            color: AppColors.white,
           margin: EdgeInsets.symmetric(horizontal:2.0,vertical: AppSizes.sidePadding),
           // margin: EdgeInsets.only(left: 0,  top: AppSizes.cardPadding),
            elevation: AppSizes.cardElevation,
            child: Padding(
              padding: EdgeInsets.all(AppSizes.cardPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: StringConstant.order,
                          style: TextStyle(
                              fontSize: AppSizes.mediumTextFontSize,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: StringConstant.n_text,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: StringConstant.o_text,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: AppSizes.smallTextFontSize,
                                    color: AppColors.black,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(text: StringConstant.order_number),
                          ],
                        ),
                      ),
                      Text(
                        StringConstant.date_formate,
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: AppSizes.mediumTextFontSize,
                            color: AppColors.nobel),
                      )
                    ],
                  ),
                  SizedBox(
                    height: AppSizes.sizeBoxHeight,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            StringConstant.tacking_number,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: AppSizes.mediumTextFontSize,
                                color: AppColors.nobel),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: AppSizes.sidePadding),
                            child: Text(
                              StringConstant.tracking_number,
                              style: TextStyle(
                                  fontSize: AppSizes.mediumTextFontSize,
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppSizes.sidePadding,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                StringConstant.quantity,
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: AppSizes.mediumTextFontSize,
                                    color: AppColors.nobel),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: AppSizes.sidePadding),
                                child: Text(
                                  StringConstant.quantity_number,
                                  style: TextStyle(
                                      fontSize: AppSizes.mediumTextFontSize,
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                StringConstant.totat_amount_text,
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: AppSizes.mediumTextFontSize,
                                    color: AppColors.nobel),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: AppSizes.sidePadding),
                                child: Text(
                                  StringConstant.total_amount,
                                  style: TextStyle(
                                      fontSize: AppSizes.mediumTextFontSize,
                                      color: AppColors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: AppSizes.sizeBoxHeight,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RaisedButton(
                        padding: EdgeInsets.only(
                            left: AppSizes.raisedButtonLRPadding,
                            right: AppSizes.raisedButtonLRPadding,
                            top: AppSizes.raisedButtonTBPadding,
                            bottom: AppSizes.raisedButtonTBPadding),
                        color: AppColors.white,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(
                                AppSizes.raisedButtonRadius),
                            side: BorderSide(
                                color: AppColors.black,
                                width: AppSizes.raisedButtonBorderWidth)),
                        child: new Text(StringConstant.details,
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: AppSizes.mediumTextFontSize,
                                fontWeight: FontWeight.w400)),
                      ),
                      Text(
                        StringConstant.delivered,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: AppSizes.mediumTextFontSize,
                            color: AppColors.green),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
