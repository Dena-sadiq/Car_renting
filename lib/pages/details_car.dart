import 'dart:ui';

import 'package:flutter/material.dart';





class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      body: Stack(
        children: [
          Positioned(
            width: size.width,
            height: size.height * 0.4,
            top: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              child: Image.asset(
                'images/wave.png',
                width: size.width,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            width: size.width * 0.9,
            height: size.height * 0.35,
            top: size.height * 0.2,
            right: size.width * .05,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 20,
                      spreadRadius: 0,
                      offset: const Offset(5, 5))
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * 0.11,
                  ),
                  const Text(
                   'Blue Audi',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  const Text(
                    '2 doors | Sport A4 Sports',
                    style: TextStyle(color: Colors.grey, fontSize: 15 , fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                        size: 20,
                      ),
                      Icon(
                        Icons.star_outline,
                        color: Colors.amberAccent,
                        size: 20,
                      ),
                      Text(
                        '(23.5k)',
                        style: TextStyle(color: Colors.grey, fontSize: 15 , fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.settings,
                            color: Colors.black87,
                          ),
                          Text('Automatic'),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.ac_unit_outlined,
                            color: Colors.black87,
                          ),
                          Text('Air Con'),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.person,
                            color: Colors.black87,
                          ),
                          Text('4 Seater'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              width: size.width * 0.7,
              height: size.height * 0.3,
              top: size.height * 0.06,
              right: size.width * .15,
              child: Image.asset('images/blue.png')),
          Positioned(
              top: size.height * 0.04,
              left: size.height * 0.02,
              width: 30,
              height: 30,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ))),
          Positioned(
              top: size.height * 0.60,
              left: size.height * 0.03,
              width: size.width * 0.88,
              height: size.height * 0.37,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Trip Dates',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      ClipPath(
                        clipper: MyCustomClipper(),
                        child: Container(
                          width: size.width * 0.75,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 20,
                                  spreadRadius: 0,
                                  offset: const Offset(5, 5))
                            ],
                          ),
                          child: Row(children: [
                            Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xfff83a86)),
                                child: const Icon(
                                  Icons.event_outlined,
                                  color: Colors.white,
                                )),
                            const Text(
                              '   03-10-2021 - 05-07-2021',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ]),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff2156c0)),
                        child: const Icon(
                          Icons.double_arrow_rounded,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Pickup & Return',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      ClipPath(
                        clipper: MyCustomClipper(),
                        child: Container(
                          width: size.width * 0.75,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  blurRadius: 20,
                                  spreadRadius: 0,
                                  offset: const Offset(5, 5))
                            ],
                          ),
                          child: Row(children: [
                            Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xfff83a86)),
                                child: const Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                )),
                            const Text(
                              ' California, 349 CA',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ]),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff2156c0)),
                        child: const Icon(
                          Icons.double_arrow_rounded,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              )),
          Positioned(
              top: size.height * 0.90,
              left: 0,
              width: size.width,
              height: size.height * 0.10,
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 20,
                        spreadRadius: 0,
                        offset: const Offset(5, 5))
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 23, right: 20, bottom: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          const Text(
                            'Total',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          Row(
                            children: const [
                              Text(
                                " \$399",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800),
                              ),
                              Text('/ trip',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700
                                    ),
                              )
                            ],
                          ),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.red,
                            shape: const StadiumBorder()),
                        onPressed: () {},
                        child: const Text('Go to Checkout'),
                      ),
                    ],
                  ),
                ),
              )),
        ],
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
    path.lineTo(size.width + 85, size.height);
    path.quadraticBezierTo(size.width / 1.15, size.height * 1.50,
        size.width / 1.020, size.height * 0.035);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
