import 'package:flutter/material.dart';
class ShopingCard extends StatelessWidget {
  const ShopingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 150,
        color: Colors.black54,
          child: Column(
            children: [
              Container(
                height: 150,
                width: 1500,
                color: Colors.indigoAccent,
              ),
              Row(
                children: [Container(
                  height: 50,
                  width: 75,
                  color: Colors.red,
                ),
                  Container(
                    height: 50,
                    width: 75,
                    color: Colors.green,
                  ),

                ]
              ),

            ],
          ),
        ),
    );
  }
}
