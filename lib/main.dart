import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shoping_app/gridview.dart';
import 'card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      home: const MyHomePage( ),
    );
  }
}
class Basicgrid extends StatelessWidget {
  const Basicgrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
    ), itemCount: 20,
      itemBuilder:(context, index) => MyHomePage(),);
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: HexColor("FFF9DB"),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,
        color: HexColor("0F0E0E"),),),
        title:Title(color: Colors.white, child: Image.asset("assets/Screenshot 2023-10-04 113915 1.png",
          height: 70,alignment: Alignment.center,)),
        centerTitle: true,
        actions: [CircleAvatar(radius: 20,
          backgroundImage:AssetImage("assets/download (14) 1.png") ,
        ),SizedBox(width: 20,)],
      ),
      body: Center(
        child: Column(
          children: [ SizedBox(
            height: 10  ,
          ),
            Container(
                height: 37,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(color: Colors.black26.withOpacity(0.2),
                        blurRadius: 400,
                        spreadRadius: 4,),
                    ]
                ),
              child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.search_sharp)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.filter_list_off)),

                ],
              ),
              ),
            SizedBox(height:30),
            Grid_view(),
          ],
        ),
      ),
    );
  }
}

