import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp( MyApp1());
}








class MyApp1 extends StatefulWidget {
  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}



class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //fit: StackFit.expand,
        children: const [DrawerScreen(), HomeScreen()],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onHorizontalDragUpdate: (details) {
          if (details.delta.dx > 0)
          {
            setState(() {
              xOffset = 230;
              yOffset = 150;
              scaleFactor = 0.6;
              isDrawerOpen = true;
            });
            print("Dragging in +X direction");
          }
          else {
            setState(() {
              xOffset = 0;
              yOffset = 0;
              scaleFactor = 1;
              isDrawerOpen = false;
            });
            print("Dragging in -X direction");
          }
        },
      child: AnimatedContainer(
        height: MediaQuery.of(context).size.height,
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scaleFactor)
          ..rotateY(isDrawerOpen ? -0.5 : 0),
        duration: const Duration(milliseconds: 250),
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(isDrawerOpen ? 27 : 0.0)),
        child: Padding(
          padding: const EdgeInsets.only(top: 8,left: 0,right: 0,bottom: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isDrawerOpen
                        ? IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        setState(() {
                          xOffset = 0;
                          yOffset = 0;
                          scaleFactor = 1;
                          isDrawerOpen = false;
                        });
                      },
                    )
                        : IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                          setState(() {
                            xOffset = 230;
                            yOffset = 150;
                            scaleFactor = 0.6;
                            isDrawerOpen = true;
                          });
                        }),
                    Text("Animation Drawer",style: TextStyle(fontSize: 17),),
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/second.jpeg'),
                    )
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                margin: const EdgeInsets.only(left: 20,right: 20,top: 3),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const[
                    Icon(Icons.search),
                    Text('Search your product..',style: TextStyle(fontSize: 14),),
                    SizedBox(width: 20,),
                    Icon(Icons.settings)
                  ],
                ),
              ),

              Expanded(

                child: ListView(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),

                  // mainAxisAlignment: Mai,
                  children: <Widget>[

                    //SizedBox(height: 15),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NewPadd("assets/second.jpeg","ahmed") ,
                        NewPadd("assets/second.jpeg","ahmed") ,
                      ],
                    ),
                    SizedBox(height: 13,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NewPadd("assets/second.jpeg","ahmed") ,
                        NewPadd("assets/second.jpeg","ahmed") ,
                      ],
                    ),
                    SizedBox(height: 13,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NewPadd("assets/second.jpeg","ahmed") ,
                        NewPadd("assets/second.jpeg","ahmed") ,
                      ],
                    ),
                    SizedBox(height: 13,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NewPadd("assets/second.jpeg","ahmed") ,
                        NewPadd("assets/second.jpeg","ahmed") ,
                      ],
                    ),
                    SizedBox(height: 13,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NewPadd("assets/second.jpeg","ahmed") ,
                        NewPadd("assets/second.jpeg","ahmed") ,
                      ],
                    ),
                    SizedBox(height: 13,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NewPadd("assets/second.jpeg","ahmed") ,
                        NewPadd("assets/second.jpeg","ahmed") ,
                      ],
                    ),
                    SizedBox(height: 13,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NewPadd("assets/second.jpeg","ahmed") ,
                        NewPadd("assets/second.jpeg","ahmed") ,
                      ],
                    ),
                    SizedBox(height: 13,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NewPadd("assets/second.jpeg","ahmed") ,
                        NewPadd("assets/second.jpeg","ahmed") ,
                      ],
                    ),
                    SizedBox(height: 13,),




                  ],

                ),),

            ],
          ),
        ),
      ),
    );
  }
}

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown.withOpacity(0.5),
      padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1, bottom: 70, left: MediaQuery.of(context).size.width*0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/second.jpeg'),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Ahmed Abdelkader',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                  SizedBox(height: 5,),
                  Text('ahmed.abdelkader.khedr@gmail.com', style: TextStyle(color: Colors.white,fontSize: 11))
                ],
              )
            ],
          ),

          Column(
            children: drawerItems
                .map((element) => Padding(
              padding: const EdgeInsets.only(left: 8,bottom: 35),
              child: Row(
                children: [
                  Icon(
                    element['icon'],
                    color: Colors.white,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(element['title'],
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20))
                ],
              ),
            ))
                .toList(),
          ),
          Row(
            children: [
              const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Settings',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 2,
                height: 20,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Log out',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}

List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey.shade300, blurRadius: 30, offset: const Offset(0, 10))
];

List<Map> drawerItems = [
  {'icon': Icons.category_outlined, 'title': 'Categories'},
  {'icon': Icons.add_alert_outlined, 'title': 'Notifications'},
  {'icon': Icons.chat_bubble_outline, 'title': 'Messages'},
  {'icon': Icons.email, 'title': 'Inbox'},
  {'icon': Icons.favorite_border, 'title': 'Favorites'},
  {'icon': FontAwesomeIcons.userAlt, 'title': 'Profile'},
];





class NewPadd extends StatelessWidget {
  const NewPadd(this.image , this.text );
  final String image ;
  final String text ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 0),
                ),
              ],
              image: DecorationImage(image: AssetImage(image))
          ),

        ),
        SizedBox(height: 6,),
        Text(
          text,
          style: const TextStyle(
              color: Colors.black87,
              fontSize: 15,
              decoration: TextDecoration.none),
        )
      ],
    );
  }
}