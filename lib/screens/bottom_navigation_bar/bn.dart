import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/screens/bottom_navigation_bar/bn2.dart';
import 'package:meal_app/screens/bottom_navigation_bar/bn_main.dart';
import 'package:meal_app/screens/cart_screen.dart';
import 'package:meal_app/screens/bottom_navigation_bar/custom_bn.dart';
import 'package:meal_app/screens/favorite_screen.dart';
import 'package:meal_app/screens/main_screen.dart';
import 'package:meal_app/widgets/size_config.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

enum BottomIcons { Home, Favorite, Search, Account }

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;

  // BottomIcons bottomIcons = BottomIcons.Home;
  List<BNScreen> bodyScreen = [
    BNScreen(CategoryScreen()),
    BNScreen(
      FavoriteScreen(),
    ),
    BNScreen(CartScreen()),
    BNScreen(CartScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: _currentIndex == 0
            ? AppBar(
                flexibleSpace: customAppBar(context),
                toolbarHeight: 145,
                backgroundColor: Colors.transparent,
                elevation: 0,
              )
            : _currentIndex == 1
                ? AppBar(
                    flexibleSpace: customAppBar2(context),
                    toolbarHeight: 290,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  )
                : AppBar(
                    flexibleSpace: customAppBar3(context),
                    toolbarHeight: 100,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
        body: bodyScreen[_currentIndex].child,
        bottomNavigationBar: CustomAnimatedBottomBar(
          containerHeight: 55,
          backgroundColor: Colors.white,
          selectedIndex: _currentIndex,
          showElevation: true,
          itemCornerRadius: 30,
          curve: Curves.easeIn,
          onItemSelected: (index) => setState(() => _currentIndex = index),
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: Colors.redAccent,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Users'),
              activeColor: Colors.redAccent,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text(
                'Messages ',
              ),
              activeColor: Colors.grey,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Colors.redAccent,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget customAppBar(BuildContext context) {
    return Container(
      height: SizeConfig.scaleHeight(145),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 20,
                    offset: Offset(0, 3))
              ],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0)),
              color: Colors.black87.withOpacity(.7),
            ),
            width: MediaQuery.of(context).size.width,
            height: SizeConfig.scaleHeight(130),
          ),
          Positioned(
            top: 55.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white54,
                          blurRadius: 8,
                          offset: Offset(0, 0))
                    ],
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        print("your menu action here");
                      },
                    ),
                    Expanded(
                      child: TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Search your meal",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        print("your menu action here");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        print("your menu action here");
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget customAppBar2(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 20,
                  offset: Offset(0, 3))
            ],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0)),
            color: Colors.black87.withOpacity(.7),
          ),
          width: MediaQuery.of(context).size.width,
          height: SizeConfig.scaleHeight(290),
        ),
        Positioned(
          top: 10,
          left: 20,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
        Positioned(
          top: 65,
          left: 29,
          child: Container(
            height: SizeConfig.scaleHeight(250),
            width: SizeConfig.scaleWidth(350),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                            radius: 50,
                            foregroundColor: Colors.red,
                            backgroundColor: Colors.redAccent,
                            backgroundImage: AssetImage('images/1.jpg')),
                        Text('...')
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('data'),
                        SizedBox(height: 10),
                        Text('data'),
                        SizedBox(height: 10),
                        Stack(
                          children: [
                            linearContainer(Colors.white, 10, 175),
                            linearContainer(Colors.redAccent, 0, 130),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text('data')
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.grey,
                  indent: 10,
                  endIndent: 10,
                  height: 30,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('data'),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              '\$251.3',
                              style: TextStyle(fontSize: 20),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 30,
                              width: 1,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('data'),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              '\$251.3',
                              style: TextStyle(fontSize: 20),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 30,
                              width: 1,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('data'),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              '\$251.3',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget customAppBar3(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(
            //       color: Colors.grey.shade400,
            //       blurRadius: 20,
            //       offset: Offset(0, 3))
            // ],
            // borderRadius: BorderRadius.only(
            //     bottomLeft: Radius.circular(10.0),
            //     bottomRight: Radius.circular(10.0)),
            color: Colors.black87.withOpacity(.7),
          ),
          width: MediaQuery.of(context).size.width,
          height: SizeConfig.scaleHeight(190),
        ),
        Positioned(
          top: 10,
          left: 20,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Row(
            children: [
              Icon(
                Icons.reorder_rounded,
                color: Colors.redAccent,
              ),
              SizedBox(
                width: 10,
              ),
              Text('My Orders')
            ],
          ),
        )
      ],
    );
  }

  Widget linearContainer(Color color, double? radius, double? width) {
    return Container(
      height: 15,
      width: width ?? 175,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(radius ?? 10),
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(radius ?? 10))),
    );
  }
}
