import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: 200,
          child: Stack(
            children: [
              Container(
                height: 90,
                child: Container(),
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
                  color: Color(0xFF3D464B),
                ),
              ),
              Container(
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFD8D8DC)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.reorder_rounded,
                                color: Colors.redAccent,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'My Orders',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF3D464B),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30)),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.library_add_check,
                          color: Colors.redAccent,
                        ),
                        Icon(
                          Icons.delete,
                          color: Colors.redAccent,
                        ),
                        Icon(
                          Icons.edit,
                          color: Colors.redAccent,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text('Sushi'),
                        Icon(Icons.card_travel),
                        Text('Sushi'),
                        Icon(Icons.card_travel),
                        Text('Sushi')
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFD8D8DC)),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.reorder_rounded,
                          color: Colors.redAccent,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'My Orders',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(25)),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.library_add_check,
                    color: Colors.redAccent,
                  ),
                  Icon(
                    Icons.delete,
                    color: Colors.redAccent,
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.redAccent,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Sushi'),
                    Icon(Icons.card_travel),
                    Text('Sushi'),
                    Icon(Icons.card_travel),
                    Text('Sushi')
                  ],
                ),
              )
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Check Out'),
        )
      ],
    );
  }
}
