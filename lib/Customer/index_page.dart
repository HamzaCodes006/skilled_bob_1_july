import 'dart:ui';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:skilled_bob_app_web/Customer/dashboard.dart';
import 'package:skilled_bob_app_web/Customer/my_bookings.dart';
import 'package:skilled_bob_app_web/Customer/my_favorites.dart';
import 'package:skilled_bob_app_web/Customer/post_a_request_customer.dart';
import 'package:skilled_bob_app_web/Customer/profile.dart';
import 'package:skilled_bob_app_web/Provider/provider_jobs_screen.dart';
import 'package:skilled_bob_app_web/authentication/login_screen.dart';
import 'package:skilled_bob_app_web/Customer/category.dart';
import 'package:skilled_bob_app_web/responsive.dart';
import '../constant.dart';
import 'dart:math' as math;

import '../hover.dart';

class IndexPage extends StatefulWidget {
  static const String id = 'IndexPage';

  const IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<String> imgList = [
    'images/car service.jpg',
    'images/painting.jpg',
    'images/web design.jfif',
  ];
  final List<String> imgListWeb = [
    // 'images/image1.jpeg',
    // 'images/image2.jpeg',
    // 'images/image3.jpeg',
    // 'images/image4.jpeg',
    // 'images/image5.jpeg',
    // 'images/image.png',
    'images/img1.jpg',
    'images/img2.jpg',
    'images/img3.jpg',
    // 'images/image10.jpeg',
  ];

  final iconList = <IconData>[
    Icons.home,
    Icons.favorite_border,
    Icons.category_outlined,
    Icons.account_circle_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _bottomNavIndex = 0;
    return Responsive(
      desktop: Scaffold(
        backgroundColor: Colors.grey.shade100,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          bottomOpacity: 6,
          shadowColor: Colors.grey,
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              MaterialButton(
                onPressed: () {},
                autofocus: false,
                // color: Colors.transparent,
                enableFeedback: false,
                child: Container(
                  height: size.height * 0.06,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    // image: DecorationImage(
                    //   image: AssetImage('images/logo.png'),
                    // ),
                  ),
                  child: Image.asset('images/horizontalLogo.png'),
                ),
              ),
              // const Text(
              //   'SkilledBob',
              //   style: TextStyle(
              //     color: Colors.white,
              //     letterSpacing: 1.0,
              //     fontWeight: FontWeight.bold,
              //     fontFamily: 'PTSans',
              //     fontSize: 24,
              //   ),
              // ),
            ],
          ),
          actions: [
            OnHover(
              builder: (bool isHovered) {
                //final color = ;
                return Center(
                    child: Container(
                  decoration: BoxDecoration(
                    color: isHovered ? kLightBlueColor : kDarkBlueColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    border: Border.all(
                      width: 2,
                      color: isHovered ? kDarkBlueColor : kLightBlueColor,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, IndexPage.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Home',
                        style: TextStyle(
                          color: isHovered ? kDarkBlueColor : Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ));
              },
            ),
            const SizedBox(
              width: 10,
            ),
            OnHover(
              builder: (bool isHovered) {
                //final color = ;
                return Center(
                    child: Container(
                  decoration: BoxDecoration(
                    color: isHovered ? kLightBlueColor : kDarkBlueColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    border: Border.all(
                      width: 2,
                      color: isHovered ? kDarkBlueColor : kLightBlueColor,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Categories.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Categories',
                        style: TextStyle(
                          color: isHovered ? kDarkBlueColor : Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ));
              },
            ),
            const SizedBox(
              width: 10,
            ),
            OnHover(
              builder: (bool isHovered) {
                //final color = ;
                return Center(
                    child: Container(
                  decoration: BoxDecoration(
                    color: isHovered ? kLightBlueColor : kDarkBlueColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    border: Border.all(
                      width: 2,
                      color: isHovered ? kDarkBlueColor : kLightBlueColor,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, PostARequestCustomer.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Post A Request',
                        style: TextStyle(
                          color: isHovered ? kDarkBlueColor : Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ));
              },
            ),
            const SizedBox(
              width: 10,
            ),
            OnHover(
              builder: (bool isHovered) {
                //final color = ;
                return Center(
                    child: Container(
                  decoration: BoxDecoration(
                    color: isHovered ? kLightBlueColor : kDarkBlueColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    border: Border.all(
                      width: 2,
                      color: isHovered ? kDarkBlueColor : kLightBlueColor,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Dashboard.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'My Profile',
                        style: TextStyle(
                          color: isHovered ? kDarkBlueColor : Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ));
              },
            ),
            const SizedBox(
              width: 40,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                    // height: size.height * 0.4,
                    viewportFraction: 1.0,
                    //enlargeCenterPage: true,
                    // pageSnapping: true,
                    aspectRatio: 2.8,
                    // enlargeStrategy: CenterPageEnlargeStrategy.height,                    // aspectRatio: 2.5,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 1800)),
                items: imgListWeb
                    .map((item) => ClipRRect(
                          // borderRadius:
                          // const BorderRadius.all(Radius.circular(4.0)),
                          child: Image.asset(
                            item,
                            fit: BoxFit.fill,
                          ),
                        ))
                    .toList(),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25.0, bottom: 10),
                child: Center(
                  child: Text(
                    'CATEGORIES',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 90.0),
                child: Row(
                  children: List.generate(6, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 15.0,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Categories()));
                        },
                        child: Container(
                          width: size.width * 0.2,
                          height: size.height * 0.45,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(
                                    0, 0), // changes position of shadow
                              ),
                            ],
                            //color: Colors.white70.withOpacity(0.7),
                            color: kLightBlue,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width * 0.2,
                                height: size.height * 0.32,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    //topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'images/image${index + 1}.jpeg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16.0,
                                  horizontal: 15.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(0),
                                      child: Text(
                                        'Service',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          //fontFamily: 'Dongle',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Car & Bike Services',
                                      style: TextStyle(
                                        fontSize: 14,
                                        //color: Colors.white,
                                        //fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25.0, bottom: 10),
                child: Center(
                  child: Text(
                    'How SkilledBob Works',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              // SizedBox(height: size.height*0.2,),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 3.0, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    WorkContainer(
                        size: size,
                        title: 'POST AND DESCRIBE YOUR TASK ',
                        imagePath: 'images/writing down.png',
                        description:
                            'Post and describe the task for free! Please wait'
                            ' and SkilledBob\'s group will respond with offers.'),
                    WorkContainer(
                        size: size,
                        title: 'CHOOSE A SKILLEDBOB YOU PREFER',
                        imagePath: 'images/one finger.png',
                        description:
                            'View Bob\'s favorite profile, skills, and assessments. Make a personal decision about the professional service provider you hire.'),
                    WorkContainer(
                        size: size,
                        title: 'LIVE A SMARTER LIFE WITH SKILLEDBOB',
                        imagePath: 'images/smart home checked.png',
                        description:
                            'Now relax and let SkilledBob do his job. Please rate it and prepare to post the next job.'),

                    // const SizedBox(height: 18),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25.0, bottom: 10),
                child: Center(
                  child: Text(
                    'Why Choose SkilledBob?',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 3.0, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    WorkContainer(
                        size: size,
                        title: 'MEET NEW CUSTOMERS ',
                        imagePath: 'images/hands.png',
                        description:
                            'The beauty of signing up for SkilledBob. The hard part of finding a job is over.'
                            ' You receive them directly in the e-mail box.'
                            ' You get into the position of choosing the jobs you like to do.'),
                    WorkContainer(
                        size: size,
                        title: 'INCREASE INCOME',
                        imagePath: 'images/refund2.png',
                        description:
                            'You get potential customers and you respond to them. More leads will follow. More jobs equals more income.'),
                    WorkContainer(
                        size: size,
                        title: 'BUILD YOUR ONLINE REPUTATION',
                        imagePath: 'images/five star.png',
                        description:
                            'Allow your staff to be reviewed and evaluated. Leads will make decisions based on your ratings. The better your reputation, the more jobs you will get.'),

                    // const SizedBox(height: 18),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                height: size.height * 0.4,
                width: double.infinity,
                color: Colors.black,
                // constraints: BoxConstraints(maxWidth: 1200.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          'images/horizontalLogo.png',
                          scale: 4,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 45.0, top: 20, bottom: 10, right: 10),
                          child: Container(
                            width: 350,
                            child: const Text(
                              'FreeSVG.org offers free vector images in SVG format with Creative Commons 0 license (public domain). You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'SITE LINKS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'My Profile',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Categories',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Post A Requests',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          'SOCIAL MEDIA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(FontAwesomeIcons.twitter),
                              tooltip: 'Twitter',
                              color: kLightBlue,
                              onPressed: () {},
                            ),
                            const Text(
                              'Twitter',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10.0),
                        Row(
                          children: [
                            IconButton(
                                icon: Icon(FontAwesomeIcons.facebook),
                                tooltip: 'Facebook',
                                color: kLightBlue,
                                onPressed: () {}),
                            const Text(
                              'Facebook',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10.0),
                        Row(
                          children: [
                            IconButton(
                                icon: Icon(FontAwesomeIcons.instagram),
                                tooltip: 'Instagram',
                                color: kLightBlue,
                                onPressed: () {}),
                            const Text(
                              'Instagram',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          'DOWNLOAD OUR APP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset(
                          'images/google-play.png',
                          scale: 4,
                        ),
                        //const SizedBox(height: 10.0),
                        Image.asset(
                          'images/app-store.png',
                          scale: 7.6,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    // const Padding(
                    //   padding: EdgeInsets.all(8.0),
                    //   child: Text(
                    //     'Community: SkilledBob Productions',
                    //     style: TextStyle(fontSize: 12.0, color: Colors.white),
                    //   ),
                    // )
                  ],
                ),
              ),
              // const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      tablet: const Scaffold(
        body: Text(
            'Tablet'), //........................tablet............................
      ),
      mobile: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          drawer: Drawer(
            child: Material(
              color: Colors.blueAccent,
              child: SafeArea(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  children: [
                    const SizedBox(
                      height: 40.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 90,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('images/car service.jpg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    BuildMenuItem(
                      icon: Icons.dashboard_outlined,
                      text: 'Dashboard',
                      onPresed: () {
                        Navigator.pushNamed(context, Dashboard.id);
                      },
                    ),
                    BuildMenuItem(
                      icon: Icons.account_circle_outlined,
                      text: 'Profile',
                      onPresed: () {
                        Navigator.pushNamed(context, Profile.id);
                      },
                    ),
                    BuildMenuItem(
                      icon: Icons.shopping_bag_rounded,
                      text: 'My Bookings',
                      onPresed: () {
                        Navigator.pushNamed(context, MyBookings.id);
                      },
                    ),
                    BuildMenuItem(
                      icon: Icons.favorite_border,
                      text: 'My Favorites',
                      onPresed: () {
                        Navigator.pushNamed(context, MyFavorites.id);
                      },
                    ),
                    BuildMenuItem(
                      icon: Icons.post_add,
                      text: 'Post A Request',
                      onPresed: () {
                        Navigator.pushNamed(context, PostARequestCustomer.id);
                      },
                    ),
                    BuildMenuItem(
                      icon: Icons.chat,
                      text: 'Chat',
                      onPresed: () {},
                    ),
                    BuildMenuItem(
                      icon: Icons.language,
                      text: 'Languages',
                      onPresed: () {
                        //Navigator.pushNamed(context, MyFavorites.id);
                      },
                    ),
                    const SizedBox(height: 35),
                    const Divider(color: Colors.white, thickness: 1.4),
                    const SizedBox(
                      height: 35.0,
                    ),
                    BuildMenuItem(
                      icon: Icons.help,
                      text: 'Help',
                      onPresed: () {},
                    ),
                    BuildMenuItem(
                      icon: Icons.logout,
                      text: 'Log Out',
                      onPresed: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          appBar: AppBar(
            iconTheme: IconThemeData(color: kDarkBlueColor),
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            // leading:
            //     // IconButton(
            //     //         color: Colors.blueAccent,
            //     //         icon:
            //     Icon(
            //   Icons.menu,
            //   color: Colors.blueAccent,
            //   size: 26,
            // ),
            //   onPressed: () {},
            // ),
            titleSpacing: 0,
            centerTitle: true,
            title: const Text(
              'Home',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kDarkBlueColor,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Container(
                      //margin: EdgeInsets.all(5.0),
                      child: CarouselSlider(
                    options: CarouselOptions(
                        enlargeCenterPage: true,
                        pageSnapping: true,
                        aspectRatio: 2.0,
                        initialPage: 0,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 5),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 1800)),
                    items: imgList
                        .map((item) => ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8.0)),
                              child: Center(
                                child: Image.asset(item,
                                    fit: BoxFit.cover, width: 1000),
                              ),
                            ))
                        .toList(),
                  )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17.0, vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Categories',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Row(
                          children: [
                            InkWell(
                              child: const Text(
                                'See all',
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  //fontStyle: FontStyle.italic,
                                  // fontSize: 20,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Categories()));
                              },
                            ),
                            Transform.rotate(
                              angle: 180 * math.pi / 180,
                              child: const Icon(
                                Icons.arrow_back_ios_sharp,
                                size: 15,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //categories
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //car and bike services container
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 15.0,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ProviderJobsScreen()));
                          },
                          child: Container(
                            width: 210,
                            height: 180,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(
                                      4, 3), // changes position of shadow
                                ),
                              ],
                              //color: Colors.white70.withOpacity(0.7),
                              color: const Color(0xffE0F3FF),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 210,
                                  height: 130,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      //topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Image.asset(
                                      'images/car service.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 6.0,
                                    horizontal: 15.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.all(0),
                                        child: Text(
                                          'Service',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                            //fontFamily: 'Dongle',
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Car & Bike Services',
                                        style: TextStyle(
                                          fontSize: 14,
                                          //color: Colors.white,
                                          //fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //painting services container
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 0.0,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ProviderJobsScreen()));
                          },
                          child: Container(
                            width: 210,
                            height: 180,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(
                                      4, 3), // changes position of shadow
                                ),
                              ],
                              //color: Colors.white70.withOpacity(0.7),
                              color: const Color(0xffE0F3FF),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 210,
                                  height: 130,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      //topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Image.asset(
                                      'images/painting.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 6.0,
                                    horizontal: 15.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Painting',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          //color: Colors.white,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      Text(
                                        'Wall Painting Services',
                                        style: TextStyle(
                                          fontSize: 14, color: Colors.black87,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //web design services container
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 15.0,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ProviderJobsScreen()));
                          },
                          child: Container(
                            width: 210,
                            height: 180,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(
                                      4, 3), // changes position of shadow
                                ),
                              ],
                              color: const Color(0xffE0F3FF),
                              //color: Colors.white70.withOpacity(0.7),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 210,
                                  height: 130,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Image.asset(
                                      'images/web design.jfif',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 6.0,
                                    horizontal: 15.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Web Designing',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          //color: Colors.white,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      Text(
                                        'Web Design Services',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black87,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // How skilled bob works
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 18.0, top: 20),
                      child: Text(
                        'How SkilledBob Works',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          fontFamily: 'PT Sans',
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3.0, vertical: 5),
                  child: Container(
                    //height: 220,
                    // decoration: BoxDecoration(
                    //   boxShadow: [
                    //     BoxShadow(
                    //       color: Colors.blue.withOpacity(0.3),
                    //       spreadRadius: 2,
                    //       blurRadius: 2,
                    //       offset: Offset(4, 4), // changes position of shadow
                    //     ),
                    //   ],
                    //   borderRadius: BorderRadius.all(Radius.circular(8)),
                    //   //color: Colors.blueAccent.withOpacity(1),
                    //   color: Color(0xff0F9CF1),
                    // ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(vertical: 8.0),
                        //   child: Row(
                        //     crossAxisAlignment: CrossAxisAlignment.center,
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       // Container(
                        //       //   height: 50,
                        //       //   width: 60,
                        //       //   child: Image.asset(
                        //       //     'images/logo.png',
                        //       //     //color: Colors.white,
                        //       //   ),
                        //       // ),
                        //       const Text(
                        //         'How SkilledBob Works',
                        //         style: TextStyle(
                        //           fontWeight: FontWeight.w800,
                        //           fontSize: 20,
                        //           color: Colors.white,
                        //         ),
                        //         textAlign: TextAlign.center,
                        //       ),
                        //       // Container(
                        //       //   height: 50,
                        //       //   width: 60,
                        //       //   child: Image.asset(
                        //       //     'images/logo.png',
                        //       //     //color: Colors.white,
                        //       //   ),
                        //       // ),
                        //     ],
                        //   ),
                        // ),
                        // const Padding(
                        //   padding:
                        //       EdgeInsets.symmetric(horizontal: 79.0, vertical: 3),
                        //   child: Divider(
                        //     color: Colors.white,
                        //     height: 5,
                        //     thickness: 1,
                        //   ),
                        // ),
                        // const Padding(
                        //   padding:
                        //       EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
                        //   child: Text(
                        //     'Skilledbob is the easiest and best way to find the perfect service provider for your needs',
                        //     //'. Whether you\'re looking for a plumber, hairdresser, car service, carpenter,web designer or a music band.Don\'t worry, get the best BOB to do the job and service you need.',
                        //     textAlign: TextAlign.justify,
                        //     style: TextStyle(
                        //       fontSize: 14,
                        //       color: Colors.black87,
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 15.0),
                          child: Container(
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: kLightBlueColor,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'POST AND DESCRIBE YOUR TASK',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            'Post and describe the task for free! Please wait and SkilledBob\'s group will respond with offers.',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black87,
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 90,
                                  height: 80,
                                  child: Image.asset(
                                    'images/writing down.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 15.0),
                          child: Container(
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: kLightBlueColor,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'CHOOSE A SKILLEDBOB YOU PREFER',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            'View Bob\'s favorite profile, skills, and assessments. Make a personal decision about the professional service provider you hire.',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black87,
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 90,
                                  height: 80,
                                  child: Image.asset(
                                    'images/one finger.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 15.0),
                          child: Container(
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: kLightBlueColor,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'LIVE A SMARTER LIFE WITH SKILLEDBOB',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            'Now relax and let SkilledBob do his job. Please rate it and prepare to post the next job.',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black87,
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 90,
                                  height: 80,
                                  child: Image.asset(
                                    'images/smart home checked.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                ),
                // Why choose skilled bob
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 18.0, top: 10),
                      child: Text(
                        'Why Choose SkilledBob',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
                  child: Container(
                    //height: 220,
                    // decoration: BoxDecoration(
                    //   boxShadow: [
                    //     BoxShadow(
                    //       color: Colors.blue.withOpacity(0.3),
                    //       spreadRadius: 3,
                    //       blurRadius: 3,
                    //       offset:
                    //           const Offset(4, 4), // changes position of shadow
                    //     ),
                    //   ],
                    //   borderRadius: const BorderRadius.all(Radius.circular(8)),
                    //   color: Colors.blueAccent.withOpacity(1),
                    // ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(vertical: 8.0),
                        //   child: Row(
                        //     crossAxisAlignment: CrossAxisAlignment.center,
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       // Container(
                        //       //   height: 50,
                        //       //   width: 60,
                        //       //   child: Image.asset(
                        //       //     'images/logo.png',
                        //       //     //color: Colors.white,
                        //       //   ),
                        //       // ),
                        //       const Text(
                        //         'How SkilledBob Works',
                        //         style: TextStyle(
                        //           fontWeight: FontWeight.w800,
                        //           fontSize: 20,
                        //           color: Colors.white,
                        //         ),
                        //         textAlign: TextAlign.center,
                        //       ),
                        //       // Container(
                        //       //   height: 50,
                        //       //   width: 60,
                        //       //   child: Image.asset(
                        //       //     'images/logo.png',
                        //       //     //color: Colors.white,
                        //       //   ),
                        //       // ),
                        //     ],
                        //   ),
                        // ),
                        // const Padding(
                        //   padding:
                        //       EdgeInsets.symmetric(horizontal: 79.0, vertical: 3),
                        //   child: Divider(
                        //     color: Colors.white,
                        //     height: 5,
                        //     thickness: 1,
                        //   ),
                        // ),
                        // const Padding(
                        //   padding: EdgeInsets.symmetric(
                        //       horizontal: 15.0, vertical: 13),
                        //   child: Text(
                        //     'There is much more to do. But finding customers is not always easy. With SkilledBob you will not miss any opportunity in the field of services. You will receive the job application directly in your pocket.',
                        //     textAlign: TextAlign.justify,
                        //     style: TextStyle(
                        //       fontSize: 15,
                        //       color: Colors.white,
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 18.0),
                          child: Container(
                            height: 145,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: kLightBlueColor,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'MEET NEW CUSTOMERS',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            'The beauty of signing up for SkilledBob. The hard part of finding a job is over. You receive them directly in the e-mail box. You get into the position of choosing the jobs you like to do.',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black87,
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 90,
                                  height: 80,
                                  child: Image.asset(
                                    'images/hands.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 18.0),
                          child: Container(
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: kLightBlueColor,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'INCREASE INCOME',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            'You get potential customers and you respond to them. More leads will follow. More jobs equals more income.',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black87,
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 90,
                                  height: 80,
                                  child: Image.asset(
                                    'images/refund2.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 18.0),
                          child: Container(
                            height: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: kLightBlueColor,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'BUILD YOUR ONLINE REPUTATION',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            'Allow your staff to be reviewed and evaluated. Leads will make decisions based on your ratings. The better your reputation, the more jobs you will get.',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black87,
                                              //overflow: TextOverflow.ellipsis
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 90,
                                  height: 80,
                                  child: Image.asset(
                                    'images/five star.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PostARequestCustomer()));
            },
            //params
            child: const Icon(
              Icons.post_add,
              color: Colors.white60,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar(
            backgroundColor: kDarkBlueColor,
            icons: iconList,
            activeIndex: _bottomNavIndex = 0,
            gapLocation: GapLocation.center,
            activeColor: Colors.white,
            inactiveColor: Colors.white60,
            notchSmoothness: NotchSmoothness.softEdge,
            onTap: (index) {
              setState(() {
                if (index == 0) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IndexPage()));
                } else if (index == 1) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyFavorites()));
                } else if (index == 2) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Categories()));
                } else if (index == 3) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()));
                }
              });
            },
            //other params
          ),
        ),
      ),
    );
  }
}

class WorkContainer extends StatelessWidget {
  const WorkContainer({
    Key? key,
    required this.size,
    required this.title,
    required this.description,
    required this.imagePath,
  }) : super(key: key);

  final Size size;
  final String title;
  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: AnimatedContainer(
        duration: const Duration(seconds: 2),
        width: size.width * 0.25,
        height: size.height * 0.4,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 0), // changes position of shadow
            )
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // mainAxisAlignment:
                  // MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 22.0, bottom: 10),
                        child: SizedBox(
                          width: 90,
                          height: 80,
                          child: Image.asset(
                            imagePath,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        description,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildMenuItem extends StatelessWidget {
  BuildMenuItem(
      {required this.icon, required this.text, required this.onPresed});

  final IconData icon;
  final String text;
  final Function onPresed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        text,
        style: kBodyText.copyWith(
            fontWeight: FontWeight.bold, color: Colors.white),
      ),
      hoverColor: Colors.orange.shade700,
      onTap: Ontap,
    );
  }

  Ontap() {
    return onPresed();
  }
}
