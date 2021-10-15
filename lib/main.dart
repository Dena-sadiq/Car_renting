
import 'dart:ui';

import 'package:car_app/pages/details_car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';




void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold (
        appBar: PreferredSize(
          preferredSize:   const Size.fromHeight(190) ,
          child: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 15.0 , bottom: 15),
              child: IconButton(
                icon: const Icon(
                  Icons.sort_rounded,
                  color: Colors.white,
                  size: 33,
                ),
                onPressed: () {
                  // Do something
                },
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.only(right: 25) ,
                width: 45,
                height: 45,
                child: SvgPicture.asset("images/profile..svg"),
              ) ,
            ],
            flexibleSpace: ClipRRect(
              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50) ),
              child: Stack(
                children: [
                  Container(
                    decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/wave.png'),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 115.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only( left: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'Choose a Car',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23.0),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 20.0 , top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 60,
                                  width: 300,
                                  child: Card(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(child:
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.place_outlined, size: 19,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text('Florida, USA ', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 95.0 ),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                //something !
                                              },
                                              child: const Icon(
                                                Icons.event_outlined , size: 20,
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.pink[400],
                                                  minimumSize: const Size(20, 60),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(15))),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20.0 ),
                                  child: Icon(
                                    Icons.tune_outlined , size: 35, color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ) ,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50) )
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left : 30.0 , top: 3),
              child: Row(
                children: const [
                  Text('23 Results', style: TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 200 ,
                  ),
                  Icon(
                    Icons.more_horiz_outlined, size: 32,
                  ),
                ],
              ),
            ),
          Stack(
         children: [
          ClipPath(
            clipper: MyCustomClipper(),
            child: SizedBox(
              width: 340,
              height: 276,
              child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: const Color(0xfffedc5f)),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800),
                                )
                              ],
                            ),
                          ),
                          const Text(
                            ' 13 Deals',
                            style: TextStyle(
                                color: Color(0xff379771),
                                fontSize: 15,
                                fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                      Center(
                        child: Image.asset('images/car.png' ,width: 280, height: 150,),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Yellow Audi A6',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                "From \$199 /day",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            height: 75,
            width: 78,
            bottom: 0,
            right: 0,
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondRoute(
                        )),
                  );
                },
                icon: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xff2156c0)),
                  child: const Icon(
                    Icons.double_arrow_rounded,
                    color: Colors.white,
                  ),
                )),
          )

        ],
      ),
            Stack(
              children: [
                ClipPath(
                  clipper: MyCustomClipper(),
                  child: SizedBox(
                    width: 340,
                    height: 276,
                    child: Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: const Color(0xfffedc5f)),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.white,
                                        size: 17,
                                      ),
                                      Text(
                                        '4.3',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w800),
                                      )
                                    ],
                                  ),
                                ),
                                const Text(
                                  ' 9 Deals',
                                  style: TextStyle(
                                      color: Color(0xff379771),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800),
                                )
                              ],
                            ),
                            Center(
                              child: Image.asset('images/red_car.png' , width: 250, height: 150,),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Red Lamborghini',
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text(
                                      "From \$279 /day",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  height: 75,
                  width: 78,
                  bottom: 0,
                  right: 0,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondRoute(
                              )),
                        );
                      },
                      icon: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color(0xff2156c0)),
                        child: const Icon(
                          Icons.double_arrow_rounded,
                          color: Colors.white,
                        ),
                      )),
                )

              ],
            ),
      ]
    ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.76, size.height);

    path.quadraticBezierTo(
        size.width / 1.43, size.height * 0.63, size.width, size.height / 1.40);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}
