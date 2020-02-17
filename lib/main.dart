import 'package:dummy_task/config/theme.dart';
import 'package:dummy_task/constants/string_constant.dart';
import 'package:dummy_task/screen/bag.dart';
import 'package:dummy_task/screen/favorites.dart';
import 'package:dummy_task/screen/home.dart';
import 'package:dummy_task/screen/profile.dart';
import 'package:dummy_task/screen/shop.dart';
import 'package:dummy_task/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bottom_navigation/bottom_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavigationMenuBloc>(
          builder: (context) {
            return BottomNavigationMenuBloc()
              ..add(BottomNavigationMenuChangeEvent(bottomMenuIndex: 0));
          },
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.of(context),
        onGenerateRoute: Router.generateRoute,
        home: MyHome(),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int menuIndex = 0;
  final GlobalKey progressKey = GlobalKey();
  BottomNavigationMenuChangeState bottomNavigationMenuChangeState;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return BlocListener<BottomNavigationMenuBloc, BottomNavigationMenuState>(
        listener: (context, state) {
      if (state is BottomNavigationMenuLoadingState) {
        return _progressWidget();
      }
    }, child: BlocBuilder<BottomNavigationMenuBloc, BottomNavigationMenuState>(
            builder: (context, state) {
      if (state is BottomNavigationMenuChangeState) {
        menuIndex = state.bottomMenuIndex;
      }
      return _body(_theme);
    }));
  }

  Color colorByIndex(ThemeData theme, int index) {
    return index == menuIndex ? theme.accentColor : theme.primaryColorLight;
  }

  BottomNavigationBarItem getItem(
      IconData icon, String title, ThemeData theme, int index) {
    return BottomNavigationBarItem(
      title: Text(
        title,
        style: TextStyle(
            fontSize: AppSizes.bottomMenuTextSize,
            color: colorByIndex(theme, index)),
      ),
      icon: Icon(
        icon,
        size: AppSizes.bottomMenuIconSize,
        color: colorByIndex(theme, index),
      ),
    );
  }

  _progressWidget() {
    return Center(
      child: Container(
          height: AppSizes.progressHeight,
          width: AppSizes.progressWidth,
          child: Center(
            child: CircularProgressIndicator(
              key: progressKey,
            ),
          )),
    );
  }

  Widget _body(ThemeData _theme) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: AppSizes.appBarElevation,
        leading: BackButton(
          color: AppColors.black,

        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                size: AppSizes.appBarIconSize,
                color: AppColors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: IndexedStack(
        index: menuIndex,
        children: <Widget>[
          Home(),
          Shop(),
          Bag(),
          Favorites(),
          Profile(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(AppSizes.bottomNavigationBarSideRadius),
            topLeft: Radius.circular(AppSizes.bottomNavigationBarSideRadius)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: _theme.accentColor,
          showSelectedLabels: true,
          unselectedItemColor: AppColors.nobel,
          items: [
            getItem(Icons.home, StringConstant.home, _theme, 0),
            getItem(Icons.shopping_cart, StringConstant.shop, _theme, 1),
            getItem(Icons.beenhere, StringConstant.bag, _theme, 2),
            getItem(Icons.favorite_border, StringConstant.favorites, _theme, 3),
            getItem(Icons.person, StringConstant.profile, _theme, 4),
          ],
          onTap: (val) {
            menuIndex = val;
            BlocProvider.of<BottomNavigationMenuBloc>(context).add(BottomNavigationMenuChangeEvent(bottomMenuIndex: menuIndex));
          },
          currentIndex: menuIndex,
        ),
      ),
    );
  }
}
