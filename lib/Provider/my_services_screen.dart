import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skilled_bob_app_web/Customer/dashboard.dart';
import 'package:skilled_bob_app_web/Customer/job_detail_page.dart';
import 'package:skilled_bob_app_web/Customer/request_page.dart';
import 'package:skilled_bob_app_web/Provider/provider_profile_screen.dart';
import 'package:skilled_bob_app_web/constant.dart';
import 'package:skilled_bob_app_web/hover.dart';

import '../constant.dart';
import '../responsive.dart';
import '../widgets/booking_options_popup_menu_widget.dart';

class Choice {
  const Choice({required this.title, required this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = <Choice>[
  const Choice(title: 'Home', icon: Icons.home),
  const Choice(title: 'Contact', icon: Icons.contacts),
  Choice(title: 'Map', icon: Icons.map),
  const Choice(title: 'Phone', icon: Icons.phone),
  const Choice(title: 'Camera', icon: Icons.camera_alt),
  const Choice(title: 'Setting', icon: Icons.settings),
  const Choice(title: 'Album', icon: Icons.photo_album),
  const Choice(title: 'WiFi', icon: Icons.wifi),
];

class MyServicesScreen extends StatefulWidget {
  static const String id = 'MyServicesScreen';

  const MyServicesScreen({Key? key}) : super(key: key);

  @override
  _MyServicesScreenState createState() => _MyServicesScreenState();
}

class _MyServicesScreenState extends State<MyServicesScreen> {
  bool favorite = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  //ScrollController c = ScrollController(keepScrollOffset: false);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Responsive(
      desktop: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          bottomOpacity: 0,
          shadowColor: Colors.transparent,
//shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Container(
                height: size.height * 0.06,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/logo.png'),
                  ),
                ),
                child: Image.asset('images/logo.png'),
              ),
              const Text(
                'SkilledBob',
                style: TextStyle(
                  color: Colors.black87,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PTSans',
                  fontSize: 24,
                ),
              ),
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
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Dashboard',
                      style: TextStyle(
                        color: isHovered ? kDarkBlueColor : Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
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
//controller: c,
          primary: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.6,
                width: size.width,
                decoration: BoxDecoration(
//shape: BoxShape.circle,
//borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6),
                      BlendMode.darken,
                    ),
                    image: AssetImage('images/car service.jpg'),
                    fit: BoxFit.fitWidth,
                  ),
                  color: Colors.black.withOpacity(0.6),
                  backgroundBlendMode: BlendMode.hardLight,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                      ),
                      child: Column(
                        children: const [
                          Text(
                            'Car Service',
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                              fontSize: 36,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Choose The Category That You Want.',
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Open Sans',
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(110, 20, 110, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Car Services:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Transform.rotate(
                        angle: 155.5, child: Icon(Icons.arrow_back_ios_sharp)),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100.0, vertical: 10),
                child: SizedBox(
                  height: size.height * 1,
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 40.0,
                    mainAxisSpacing: 8.0,
                    primary: true,
// physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(
                      choices.length,
                      (index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => JobDetail()));
                            // Navigator.pushNamed(context, JobDetail.id);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 15.0,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => JobDetail()));
                                // Navigator.pushNamed(context, JobDetail.id);
                              },
                              child: Container(
                                width: 270,
                                height: 280,
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
                                    bottomLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => JobDetail()));
                                  },
                                  child: Column(
//mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
//width: 270,
//height: 180,
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
//topLeft: Radius.circular(10),
                                                topRight: Radius.circular(30),
                                              ),
                                              child: Image.asset(
                                                'images/car service.jpg',
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Positioned(
                                              right: 1,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 15.0),
                                                child: IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (favorite == true) {
                                                          setState(() {
                                                            favorite = false;
                                                          });
                                                        } else {
                                                          setState(() {
                                                            favorite = true;
                                                          });
                                                        }
                                                      });
                                                    },
                                                    icon: favorite == false
                                                        ? const Icon(
                                                            Icons
                                                                .favorite_border,
                                                            color: Colors.white,
                                                            size: 26,
                                                          )
                                                        : const Icon(
                                                            Icons.favorite,
                                                            color: Colors.blue,
                                                            size: 26,
                                                          )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 15.0,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  'Car Service Name',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black87,
                                                  ),
                                                ),
                                                Row(
                                                  children: const [
                                                    Icon(Icons.star,
                                                        color: kOrange,
                                                        size: 16),
                                                    Text(
                                                      '3.45',
                                                      style: TextStyle(
                                                          color: kOrange,
                                                          height: 1.4),
                                                    ),
                                                    Text(
                                                      '(44)',
                                                      style: TextStyle(
                                                          color: kOrange,
                                                          height: 1.4),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 7),
                                            const Text(
                                              'We are providing high quality services to our customers. You are our first priority. We are providing high quality services to our customers. You are our first priority.',
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.black87),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      tablet: Container(
        child: Text('Tablet screen'),
      ),
      mobile: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Services',
            style: TextStyle(fontSize: 18.0, color: kLightBlue),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.5,
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: kLightBlue),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverToBoxAdapter(
              child: Wrap(
                children: [
                  ListView.builder(
                      padding: const EdgeInsets.only(bottom: 10, top: 10),
                      primary: false,
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: ((_, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Request(),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black87.withOpacity(0.1),
                                    blurRadius: 10,
                                    offset: const Offset(0, 5))
                              ],
                              border: Border.all(
                                  color: Colors.black87.withOpacity(0.05)),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(children: [
                                  Hero(
                                    tag: '',
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.asset(
                                        'images/painting.jpg',
                                        height: 80,
                                        width: 80,
                                        fit: BoxFit.cover,
//   errorWidget: (context, url,
//           error) =>
//       const Icon(Icons.error_outline),
// ),
                                      ),
                                    ),
                                  ),

//
                                ]),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Wrap(
                                    runSpacing: 10,
                                    alignment: WrapAlignment.start,
                                    children: <Widget>[
                                      Row(children: const [
                                        Expanded(
                                            child: Text('Car Service',
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    height: 1.4,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                        BookingOptionsPopupMenuWidget()
                                      ]),
                                      const Divider(
                                        height: 6,
                                        thickness: 0.5,
                                      ),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Wrap(
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.center,
                                                spacing: 5,
                                                children: [
                                                  SizedBox(
                                                      height: 32,
                                                      child: Chip(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(0),
                                                          label: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: const <
                                                                  Widget>[
                                                                Icon(Icons.star,
                                                                    color:
                                                                        kLightBlue,
                                                                    size: 16),
                                                                Text('3.45',
                                                                    style: TextStyle(
                                                                        color:
                                                                            kLightBlue,
                                                                        height:
                                                                            1.4))
                                                              ]),
                                                          backgroundColor:
                                                              kLightBlue
                                                                  .withOpacity(
                                                                      0.15),
                                                          shape:
                                                              const StadiumBorder())),
                                                  const Text('(44)',
                                                      style: TextStyle(
                                                          color: kLightBlue,
                                                          height: 1.4))
                                                ]),
                                          ]),
                                      const Divider(height: 6, thickness: 0.5),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text('Description',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 17.0,
                                                  color: Colors.black87)),
                                          Text(
                                            'We are providing high quality services to our customers. You are our first priority',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
