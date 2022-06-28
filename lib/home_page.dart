import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Cars", style: TextStyle( fontSize: 26, color: Colors.red),),

          elevation: 0,
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications_none, color: Colors.red,),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.shopping_cart, color: Colors.red,),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,

                    children: [

                      _singleTab("All",true),
                      _singleTab("Blue", false),
                      _singleTab("Red", false),
                      _singleTab("Green", false),
                      _singleTab("Yellow", false),
                      _singleTab("Red", false),
                      _singleTab("Green", false),
                      _singleTab("Yellow", false),
                    ],
                  ),
                ),
                SizedBox(height: 20,),

                makeItem("assets/images/car1.jpg", "PDP Car", "  Electric", "100\$"),
                makeItem("assets/images/car2.jpg", "PDP Car", " Electric", "100\$"),
                makeItem("assets/images/car3.jpg", "PDP Car", " Electric", "100\$"),
                makeItem("assets/images/car1.jpg", "PDP Car", " Electric", "100\$"),

              ],
            ),
          ),
        )
    );
  }

  Widget _singleTab(String type, bool _isActive,){
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: _isActive ? Colors.red : Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Text(type, style: TextStyle(fontSize: _isActive ? 20 : 17),),
        ),
      ),
    );
  }

  Widget makeItem(String img, String marka, String narx, String nima){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image:
          DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover
          ),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade400, blurRadius: 10, offset: Offset(0,10))
          ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.2),
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(marka, style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),

                    Text(narx,style: TextStyle(color:Colors.red,fontSize: 22 ),),

                  ],
                ),
                Text(nima, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
              ],
            ),
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Container(
                child: Icon(Icons.favorite_border, size: 20,color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
