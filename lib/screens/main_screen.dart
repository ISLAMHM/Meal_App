import 'package:flutter/material.dart';
import 'package:meal_app/widgets/size_config.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Text(
              'Sushi Order',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),

            Container(
              height: 250,
              child: ListView.builder(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => Stack(
                  children: [
                    firstStack(10, 240, 150, .23, 0, 10, null),
                    firstStack(2.5, 222, 163, .35, 10, 15, null),
                    firstStack(
                        0,
                        205,
                        170,
                        .2,
                        10,
                        20,
                        Column(
                          children: [
                            buildImage('type'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('The Name is .......'),
                                  Text('rating'),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        'fav',
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.share,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        'share',
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                  Expanded(
                                    child: Text(
                                      '\$2',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 24),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
            Text(
              'Beverage',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => Stack(
                  children: [
                    firstStack(10, 240, 150, .23, 0, 10, null),
                    firstStack(2.5, 222, 163, .35, 10, 15, null),
                    firstStack(
                        0,
                        205,
                        170,
                        .2,
                        10,
                        20,
                        Column(
                          children: [
                            buildImage('type'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('The Name is .......'),
                                  Text('rating'),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        'fav',
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.share,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        'share',
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                  Expanded(
                                    child: Text(
                                      '\$2',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(fontSize: 24),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
            ///////////////
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Row(
            //     children: [
            //       buildSizedBox('Mug'),
            //       SizedBox(width: 16),
            //       buildSizedBox('Bottle'),
            //     ],
            //   ),
            // ),
            ///////////
            Text(
              'Reserve Room',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 3),
                              blurRadius: 10)
                        ]),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        SizedBox(
                          height: SizeConfig.scaleHeight(160),
                          width: SizeConfig.scaleWidth(160),
                          child: Stack(
                            children: [
                              Container(
                                child: Image.asset(
                                  'images/1.jpg',
                                  fit: BoxFit.fill,
                                ),
                                width: double.infinity,
                                height: SizeConfig.scaleHeight(135),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.shopping_cart_rounded,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'pieces',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(20))),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('The Name is .......'),
                            Text('rating')
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.grey,
                                ),
                                Text('fav')
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Icon(
                                  Icons.share,
                                  color: Colors.grey,
                                ),
                                Text('share')
                              ],
                            ),
                            SizedBox(width: 30),
                            Text(
                              '\$2',
                              style: TextStyle(fontSize: 25),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildSizedBox(
    String type,
  ) {
    return SizedBox(
      child: Stack(
        children: [
          firstStack(10, 240, 150, .23, 0, 10, null),
          firstStack(2.5, 222, 163, .35, 10, 15, null),
          firstStack(
              0,
              205,
              170,
              .2,
              10,
              20,
              Column(
                children: [
                  buildImage(type),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('The Name is .......'),
                        Text('rating'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.grey,
                            ),
                            Text(
                              'fav',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Icon(
                              Icons.share,
                              color: Colors.grey,
                            ),
                            Text(
                              'share',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        Expanded(
                          child: Text(
                            '\$2',
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }

  Widget buildImage(String type) {
    return SizedBox(
      height: SizeConfig.scaleHeight(130),
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            child: Image.asset(
              'images/1.jpg',
              fit: BoxFit.fill,
            ),
            width: double.infinity,
            // height: SizeConfig.scaleHeight(135),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.shopping_cart_rounded,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Text(
                  type,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(20))),
          ),
        ],
      ),
    );
  }

  Widget firstStack(
    double left,
    double height,
    double width,
    double opacity,
    double offset,
    double blur,
    Widget? child,
  ) {
    return Padding(
      padding: EdgeInsets.only(left: left),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 7.5),
        height: SizeConfig.scaleHeight(height),
        width: SizeConfig.scaleWidth(width),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(opacity),
                  offset: Offset(0, offset),
                  blurRadius: blur)
            ]),
        child: child != null ? child : null,
      ),
    );
  }
}
