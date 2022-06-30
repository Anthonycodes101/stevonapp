import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() { runApp(stevonapp()); }
class stevonapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      home: MyHomePage()
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   Widget imageCarousel= Container(
     height:230.0,
     child:  Carousel(
       boxFit: BoxFit.cover,
       images: const [
         AssetImage('assets/images/b.jpg'),
         AssetImage('assets/images/c.jpg'),
       ],
       autoplay: false,
       animationCurve: Curves.fastOutSlowIn,
       animationDuration: const Duration(milliseconds: 1000),
       dotSize: 5.0,
       dotColor:Colors.green,
       indicatorBgPadding: 5.0,
     ),
   );
    
    return Scaffold(
      // ignore: unnecessary_new
      appBar: AppBar(

        backgroundColor: Colors.green,
        title: const Text('stevonapp'),
        actions: <Widget> [
          IconButton(icon:const Icon(Icons.search, color: Colors.white,), onPressed:(){}),
          IconButton(icon:const Icon(Icons.shopping_cart, color: Colors.white,), onPressed:(){}),
        ],
      ),
          drawer: Container(
            width: 200,
            height: 800,
            child: Drawer(

              child: ListView(
                children:<Widget> [

                  UserAccountsDrawerHeader(accountName: const Text('Anthony Uzonna'),
                   accountEmail: const Text('anthonyuzonna341@gmail.com'),

                   currentAccountPicture: GestureDetector(

                     child: const CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person),
                    )
                     ),
                     decoration:  const BoxDecoration(
                       color: Colors.green
                     ),

                     ),

                     InkWell(
                       onTap: () {
                       },
                       child:  const ListTile(
                      title: Text('Home Page'),
                      leading: Icon(Icons.home,color: Colors.pinkAccent,),
                       ),
                     ),



                       InkWell(
                       onTap: () {
                       },
                       child: const ListTile(
                      title: Text('My account'),
                      leading: Icon(Icons.person,color: Colors.grey,),
                       ),
                     ),

                       InkWell(
                       onTap: () {
                       },
                       child:  const ListTile(
                      title: Text('My orders'),
                      leading: Icon(Icons.shopping_basket,color: Colors.deepOrange,),
                       ),
                     ),

                       InkWell(
                       onTap: () {
                       },
                       child:const ListTile(
                      title: Text('My categories'),
                      leading: Icon(Icons.category,color: Colors.red,),
                       ),
                     ),

                       InkWell(
                       onTap: () {
                       },
                       child:  const ListTile(
                      title: Text('My favourites'),
                      leading: Icon(Icons.favorite,color: Colors.red),
                       ),
                     ),

                 InkWell(
                       onTap: () {
                       },
                       child: const ListTile(
                      title: Text('Settings'),
                      leading: Icon(Icons.settings,color: Colors.blue),
                       ),
                     ),

                     InkWell(
                       onTap: () {
                       },
                       child: const ListTile(
                      title: Text('About'),
                      leading: Icon(Icons.help,color: Colors.blue),
                       ),
                     ),
                ],
              ),
            ),
          ),
      body: ListView(
        children: <Widget>[
          imageCarousel
        ],
      ),
    );
  }
}