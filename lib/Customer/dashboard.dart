import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/src/provider.dart';
import 'package:skilled_bob_app_web/Customer/my_bookings.dart';
import 'package:skilled_bob_app_web/Customer/post_a_request_customer.dart';
import 'package:skilled_bob_app_web/Customer/profile.dart';
import 'package:skilled_bob_app_web/Customer/request_page.dart';
import 'package:skilled_bob_app_web/Provider/provider_dashboard.dart';
import 'package:skilled_bob_app_web/Provider/provider_profile_screen.dart';
import 'package:skilled_bob_app_web/Providers/menu_controller.dart';
import 'package:skilled_bob_app_web/authentication/login_screen.dart';
import 'package:skilled_bob_app_web/authentication/register_screen.dart';
import 'package:skilled_bob_app_web/responsive.dart';

import '../constant.dart';
import 'index_page.dart';
import 'my_favorites.dart';

class Dashboard extends StatefulWidget {
  static const String id = 'Dashboard';

  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool convert = false;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Responsive(
      mobile: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white70.withOpacity(0.96),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            shadowColor: Colors.transparent,
            backgroundColor: Colors.blue,
            title: const Center(
              child: Text(
                'Dashboard',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
            leading: IconButton(
              color: Colors.white,
              icon: const Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.white,
                size: 20,
              ),
              onPressed: () {
                Navigator.pushNamed(context, IndexPage.id);
              },
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: CircleAvatar(
                  child: Image.asset(
                    'images/user profile.png',
                    color: Colors.transparent,
                    height: 30,
                    width: 26,
                  ),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Stack(
              fit: StackFit.loose,
              alignment: AlignmentDirectional.topCenter,
              children: [
                Column(
                  children: [
                    Container(
                      height: 180,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Center(
                              child: Text(
                            'Usama',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          )),
                          Center(
                              child: Padding(
                            padding: EdgeInsets.only(bottom: 40.0),
                            child: Text(
                              'usamaali@gmail.com',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          )),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 60.0, right: 20, left: 20),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Profile()));
                              },
                              child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  //height: 300,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'images/user profile.png',
                                                  color: Colors.blue,
                                                  height: 25,
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                Container(
                                                  color: Colors.black45,
                                                  height: 26,
                                                  width: 1.5,
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                const Text(
                                                  'My Profile',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Icon(
                                              Icons.arrow_forward_ios,
                                              size: 17,
                                              color: Colors.black54,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          //my favorite
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, right: 20, left: 20),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyFavorites()));
                              },
                              child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  //height: 300,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.favorite_border,
                                                  color: Colors.blue,
                                                  size: 26,
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                Container(
                                                  color: Colors.black45,
                                                  height: 26,
                                                  width: 1.5,
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                const Text(
                                                  'My Favorite',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Icon(
                                              Icons.arrow_forward_ios,
                                              size: 17,
                                              color: Colors.black54,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          //booking
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, right: 20, left: 20),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyBookings()));
                              },
                              child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  //height: 300,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'images/one finger.png',
                                                  color: Colors.blue,
                                                  height: 25,
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                Container(
                                                  color: Colors.black45,
                                                  height: 26,
                                                  width: 1.5,
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                const Text(
                                                  'Booking',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Icon(
                                              Icons.arrow_forward_ios,
                                              size: 17,
                                              color: Colors.black54,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          //post a job
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, right: 20, left: 20),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PostARequestCustomer()));
                              },
                              child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  //height: 300,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.post_add,
                                                  color: Colors.blue,
                                                  size: 25,
                                                ),
                                                // Image.asset(
                                                //   'images/writing down.png',
                                                //   color: Colors.blue,
                                                //   height: 25,
                                                // ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                Container(
                                                  color: Colors.black45,
                                                  height: 26,
                                                  width: 1.5,
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                const Text(
                                                  'Post A job',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Icon(
                                              Icons.arrow_forward_ios,
                                              size: 17,
                                              color: Colors.black54,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          //chat
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, right: 20, left: 20),
                            child: InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             ProviderProfileScreen()));
                              },
                              child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  //height: 300,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.chat,
                                                  color: Colors.blue,
                                                  size: 25,
                                                ),
                                                // Image.asset(
                                                //   'images/writing down.png',
                                                //   color: Colors.blue,
                                                //   height: 25,
                                                // ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                Container(
                                                  color: Colors.black45,
                                                  height: 26,
                                                  width: 1.5,
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                const Text(
                                                  'Chat',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Icon(
                                              Icons.arrow_forward_ios,
                                              size: 17,
                                              color: Colors.black54,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          //switch to provider
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, right: 20, left: 20),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProviderDashboard()));
                              },
                              child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  //height: 300,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.switch_left,
                                                  color: Colors.blue,
                                                  size: 25,
                                                ),
                                                // Image.asset(
                                                //   'images/writing down.png',
                                                //   color: Colors.blue,
                                                //   height: 25,
                                                // ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                Container(
                                                  color: Colors.black45,
                                                  height: 26,
                                                  width: 1.5,
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                const Text(
                                                  'Switch To Provider',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Icon(
                                              Icons.arrow_forward_ios,
                                              size: 17,
                                              color: Colors.black54,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          //fiscal bill
                          // Padding(
                          //   padding: const EdgeInsets.only(
                          //       top: 10.0, right: 20, left: 20),
                          //   child: Container(
                          //       decoration: const BoxDecoration(
                          //         color: Colors.white,
                          //         borderRadius:
                          //             BorderRadius.all(Radius.circular(12)),
                          //       ),
                          //       //height: 300,
                          //       child: Column(
                          //         children: [
                          //           Padding(
                          //             padding: const EdgeInsets.all(20.0),
                          //             child: Row(
                          //               mainAxisAlignment:
                          //                   MainAxisAlignment.spaceBetween,
                          //               children: [
                          //                 Row(
                          //                   children: [
                          //                     Image.asset(
                          //                       'images/writing down.png',
                          //                       color: Colors.blue,
                          //                       height: 25,
                          //                     ),
                          //                     const SizedBox(
                          //                       width: 15,
                          //                     ),
                          //                     Container(
                          //                       color: Colors.black45,
                          //                       height: 26,
                          //                       width: 1.5,
                          //                     ),
                          //                     const SizedBox(
                          //                       width: 15,
                          //                     ),
                          //                     const Text(
                          //                       'Fiscal Bill',
                          //                       style: TextStyle(
                          //                         fontSize: 16,
                          //                         fontWeight: FontWeight.bold,
                          //                       ),
                          //                     ),
                          //                   ],
                          //                 ),
                          //                 const Icon(
                          //                   Icons.arrow_forward_ios,
                          //                   size: 17,
                          //                   color: Colors.black54,
                          //                 ),
                          //               ],
                          //             ),
                          //           ),
                          //         ],
                          //       )),
                          // ),
                          // //my jobs
                          // Padding(
                          //   padding: const EdgeInsets.only(
                          //       top: 10.0, right: 20, left: 20),
                          //   child: Container(
                          //       decoration: const BoxDecoration(
                          //         color: Colors.white,
                          //         borderRadius:
                          //             BorderRadius.all(Radius.circular(12)),
                          //       ),
                          //       //height: 300,
                          //       child: Column(
                          //         children: [
                          //           Padding(
                          //             padding: const EdgeInsets.all(20.0),
                          //             child: Row(
                          //               mainAxisAlignment:
                          //                   MainAxisAlignment.spaceBetween,
                          //               children: [
                          //                 Row(
                          //                   children: [
                          //                     const Icon(
                          //                       Icons.card_travel,
                          //                       color: Colors.blue,
                          //                       size: 26,
                          //                     ),
                          //                     const SizedBox(
                          //                       width: 15,
                          //                     ),
                          //                     Container(
                          //                       color: Colors.black45,
                          //                       height: 26,
                          //                       width: 1.5,
                          //                     ),
                          //                     const SizedBox(
                          //                       width: 15,
                          //                     ),
                          //                     const Text(
                          //                       'My Jobs',
                          //                       style: TextStyle(
                          //                         fontSize: 16,
                          //                         fontWeight: FontWeight.bold,
                          //                       ),
                          //                     ),
                          //                   ],
                          //                 ),
                          //                 const Icon(
                          //                   Icons.arrow_forward_ios,
                          //                   size: 17,
                          //                   color: Colors.black54,
                          //                 ),
                          //               ],
                          //             ),
                          //           ),
                          //         ],
                          //       )),
                          // ),
                          // //quotes
                          // Padding(
                          //   padding: const EdgeInsets.only(
                          //       top: 10.0, right: 20, left: 20),
                          //   child: Container(
                          //       decoration: const BoxDecoration(
                          //         color: Colors.white,
                          //         borderRadius:
                          //             BorderRadius.all(Radius.circular(12)),
                          //       ),
                          //       //height: 300,
                          //       child: Column(
                          //         children: [
                          //           Padding(
                          //             padding: const EdgeInsets.all(20.0),
                          //             child: Row(
                          //               mainAxisAlignment:
                          //                   MainAxisAlignment.spaceBetween,
                          //               children: [
                          //                 Row(
                          //                   children: [
                          //                     Image.asset(
                          //                       'images/quotes.png',
                          //                       color: Colors.blue,
                          //                       height: 25,
                          //                     ),
                          //                     const SizedBox(
                          //                       width: 15,
                          //                     ),
                          //                     Container(
                          //                       color: Colors.black45,
                          //                       height: 26,
                          //                       width: 1.5,
                          //                     ),
                          //                     const SizedBox(
                          //                       width: 15,
                          //                     ),
                          //                     const Text(
                          //                       'My Quotes',
                          //                       style: TextStyle(
                          //                         fontSize: 16,
                          //                         fontWeight: FontWeight.bold,
                          //                       ),
                          //                     ),
                          //                   ],
                          //                 ),
                          //                 const Icon(
                          //                   Icons.arrow_forward_ios,
                          //                   size: 17,
                          //                   color: Colors.black54,
                          //                 ),
                          //               ],
                          //             ),
                          //           ),
                          //         ],
                          //       )),
                          // ),
                          // //affiliate
                          // Padding(
                          //   padding: const EdgeInsets.only(
                          //       top: 10.0, right: 20, left: 20),
                          //   child: Container(
                          //       decoration: const BoxDecoration(
                          //         color: Colors.white,
                          //         borderRadius:
                          //             BorderRadius.all(Radius.circular(12)),
                          //       ),
                          //       //height: 300,
                          //       child: Column(
                          //         children: [
                          //           Padding(
                          //             padding: const EdgeInsets.all(20.0),
                          //             child: Row(
                          //               mainAxisAlignment:
                          //                   MainAxisAlignment.spaceBetween,
                          //               children: [
                          //                 Row(
                          //                   children: [
                          //                     const Icon(
                          //                       Icons.settings,
                          //                       color: Colors.blue,
                          //                       size: 26,
                          //                     ),
                          //                     const SizedBox(
                          //                       width: 15,
                          //                     ),
                          //                     Container(
                          //                       color: Colors.black45,
                          //                       height: 26,
                          //                       width: 1.5,
                          //                     ),
                          //                     const SizedBox(
                          //                       width: 15,
                          //                     ),
                          //                     const Text(
                          //                       'Affiliate',
                          //                       style: TextStyle(
                          //                         fontSize: 16,
                          //                         fontWeight: FontWeight.bold,
                          //                       ),
                          //                     ),
                          //                   ],
                          //                 ),
                          //                 const Icon(
                          //                   Icons.arrow_forward_ios,
                          //                   size: 17,
                          //                   color: Colors.black54,
                          //                 ),
                          //               ],
                          //             ),
                          //           ),
                          //         ],
                          //       )),
                          // ),
                          //logout
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, right: 20, left: 20),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegisterScreen()));
                              },
                              child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  //height: 300,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.logout,
                                                  color: Colors.blue,
                                                  size: 26,
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                Container(
                                                  color: Colors.black45,
                                                  height: 26,
                                                  width: 1.5,
                                                ),
                                                const SizedBox(
                                                  width: 15,
                                                ),
                                                const Text(
                                                  'LogOut',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Icon(
                                              Icons.arrow_forward_ios,
                                              size: 17,
                                              color: Colors.black54,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 130.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      child: Image.asset(
                        'images/car service.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      tablet: Container(child: Text('Tablet')),
      desktop: Scaffold(
        key: _scaffoldKey,
        drawer: SideMenu(
          selected: 1,
        ),
        body: SafeArea(
          child: Row(
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  // flex: 1, (default)
                  child: SideMenu(
                    selected: 1,
                  ),
                ),
              Expanded(
                flex: 5,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          if (!Responsive.isDesktop(context))
                            IconButton(
                              onPressed: () {
                                context.read<MenuController>().controlMenu();
                              },
                              icon: Icon(Icons.menu),
                            ),
                          Text(
                            "Dashboard",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SwitchListTile(
                                  title: const Text(
                                    'Customer Mode',
                                    style: kBodyTextBlack,
                                  ),
                                  subtitle: const Text(
                                    'Turn switch on to go to provider Mode.',
                                    style: kBodyTextGrey,
                                  ),
                                  activeColor: kLightBlue,
                                  value: convert,
                                  onChanged: (selected) {
                                    setState(() {
                                      convert = !convert;

                                      Navigator.pushReplacementNamed(context, ProviderProfileScreen.id);
                                    }
                                    );
                                  }),
                            ),
                          ),
                          //Expanded(child: SearchField()),
                          // Container(
                          //   margin: const EdgeInsets.only(left: 16),
                          //   padding: const EdgeInsets.symmetric(
                          //     horizontal: 16,
                          //     vertical: 16 / 2,
                          //   ),
                          //   decoration: BoxDecoration(
                          //     //color: const Color(0xFF2A2D3E),
                          //     borderRadius:
                          //         const BorderRadius.all(Radius.circular(10)),
                          //     border: Border.all(color: Colors.white10),
                          //   ),
                          //   child: Row(
                          //     children: [
                          //       if (!Responsive.isMobile(context))
                          //         const Padding(
                          //           padding: EdgeInsets.symmetric(
                          //               horizontal: 16 / 2),
                          //           child: Text(
                          //             "Switch To Provider",
                          //             style: TextStyle(
                          //               color: CupertinoColors.black,
                          //             ),
                          //           ),
                          //         ),
                          //       //Icon(Icons.keyboard_arrow_down),
                          //       Switch.adaptive(
                          //         value: false,
                          //         inactiveThumbColor: Colors.blue,
                          //         inactiveTrackColor: Colors.black45,
                          //         onChanged: (value) {
                          //           //value = true;
                          //           //print('value is now true');
                          //           Navigator.push(
                          //               context,
                          //               MaterialPageRoute(
                          //                   builder: (context) =>
                          //                       ProviderProfileScreen()));
                          //         },
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Column(
                              children: [
                                const SizedBox(height: 16.0),
                                SingleChildScrollView(
                                  physics: const BouncingScrollPhysics(),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'User Avatar:',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Center(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              //border: Border.all(color: Colors.blue, width: 3),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              color: Colors.blue,
                                            ),
                                            width: 180,
                                            height: 140,
                                            child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              child: Image.asset(
                                                'images/car service.jpg',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 18,
                                        ),
                                        //heading
                                        const Text(
                                          'About Me:',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        //username textfield
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10.0, bottom: 2),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              color: Colors.white,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.0, top: 13),
                                                  child: Text(
                                                    'Username',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8.0),
                                                  child: Row(
                                                    children: [
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 15.0),
                                                        child: Icon(
                                                          Icons
                                                              .account_circle_outlined,
                                                          color: Colors.black38,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        color: Colors.black45,
                                                        height: 26,
                                                        width: 1.5,
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      const SizedBox(
                                                        width: 200,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                            hintText:
                                                                'Username',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        //first name textfield
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2.0, bottom: 2),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              color: Colors.white,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.0, top: 13),
                                                  child: Text(
                                                    'First Name',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8.0),
                                                  child: Row(
                                                    children: [
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 15.0),
                                                        child: Icon(
                                                          Icons
                                                              .account_circle_outlined,
                                                          color: Colors.black38,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        color: Colors.black45,
                                                        height: 26,
                                                        width: 1.5,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const SizedBox(
                                                        width: 200,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                            hintText:
                                                                'First Name',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        //last name textfield
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2.0, bottom: 2),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              color: Colors.white,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.0, top: 13),
                                                  child: Text(
                                                    'Last Name',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8.0),
                                                  child: Row(
                                                    children: [
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 15.0),
                                                        child: Icon(
                                                          Icons
                                                              .account_circle_outlined,
                                                          color: Colors.black38,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        color: Colors.black45,
                                                        height: 26,
                                                        width: 1.5,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const SizedBox(
                                                        width: 200,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                            hintText:
                                                                'Last Name',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 18,
                                        ),
                                        //heading
                                        const Text(
                                          'Contact Detail:',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        //mobile number textfield
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10.0, bottom: 2),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              color: Colors.white,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.0, top: 13),
                                                  child: Text(
                                                    'Mobile Number',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8.0),
                                                  child: Row(
                                                    children: [
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 15.0),
                                                        child: Icon(
                                                          Icons.phone_android,
                                                          color: Colors.black38,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        color: Colors.black45,
                                                        height: 26,
                                                        width: 1.5,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const SizedBox(
                                                        width: 200,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                            hintText:
                                                                'Mobile Number',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        //telephone number textfield
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2.0, bottom: 2),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              color: Colors.white,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.0, top: 13),
                                                  child: Text(
                                                    'Telephone Number',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8.0),
                                                  child: Row(
                                                    children: [
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 15.0),
                                                        child: Icon(
                                                          Icons.phone,
                                                          color: Colors.black38,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        color: Colors.black45,
                                                        height: 26,
                                                        width: 1.5,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const SizedBox(
                                                        width: 200,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                            hintText:
                                                                'Telephone Number',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        //Email textfield
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2.0, bottom: 2),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              color: Colors.white,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.0, top: 13),
                                                  child: Text(
                                                    'Email',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8.0),
                                                  child: Row(
                                                    children: [
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 15.0),
                                                        child: Icon(
                                                          Icons.email_outlined,
                                                          color: Colors.black38,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        color: Colors.black45,
                                                        height: 26,
                                                        width: 1.5,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const SizedBox(
                                                        width: 200,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                            hintText: 'Email',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 18,
                                        ),
                                        //heading
                                        const Text(
                                          'Address Detail:',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        //ADDRESS textfield
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10.0, bottom: 2),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              color: Colors.white,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.0, top: 13),
                                                  child: Text(
                                                    'Address',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8.0),
                                                  child: Row(
                                                    children: [
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 15.0),
                                                        child: Icon(
                                                          Icons.location_on,
                                                          color: Colors.black38,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        color: Colors.black45,
                                                        height: 26,
                                                        width: 1.5,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const SizedBox(
                                                        width: 200,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                            hintText: 'Address',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        //Apt/Suite # textfield
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2.0, bottom: 2),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              color: Colors.white,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.0, top: 13),
                                                  child: Text(
                                                    'Apt/Suite #',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8.0),
                                                  child: Row(
                                                    children: [
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 15.0),
                                                        child: Icon(
                                                          Icons.location_on,
                                                          color: Colors.black38,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        color: Colors.black45,
                                                        height: 26,
                                                        width: 1.5,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const SizedBox(
                                                        width: 200,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                            hintText:
                                                                'Apt/Suite #',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        //cITY textfield
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2.0, bottom: 2),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              color: Colors.white,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.0, top: 13),
                                                  child: Text(
                                                    'City',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8.0),
                                                  child: Row(
                                                    children: [
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 15.0),
                                                        child: Icon(
                                                          Icons.location_on,
                                                          color: Colors.black38,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        color: Colors.black45,
                                                        height: 26,
                                                        width: 1.5,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const SizedBox(
                                                        width: 200,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                            hintText: 'City',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        //STATE number textfield
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2.0, bottom: 2),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              color: Colors.white,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.0, top: 13),
                                                  child: Text(
                                                    'State',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8.0),
                                                  child: Row(
                                                    children: [
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 15.0),
                                                        child: Icon(
                                                          Icons.location_on,
                                                          color: Colors.black38,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        color: Colors.black45,
                                                        height: 26,
                                                        width: 1.5,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const SizedBox(
                                                        width: 200,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                            hintText: 'State',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        //COUNTRY textfield
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2.0, bottom: 2),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              color: Colors.white,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.0, top: 13),
                                                  child: Text(
                                                    'Country',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8.0),
                                                  child: Row(
                                                    children: [
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 15.0),
                                                        child: Icon(
                                                          Icons.location_on,
                                                          color: Colors.black38,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Container(
                                                        color: Colors.black45,
                                                        height: 26,
                                                        width: 1.5,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const SizedBox(
                                                        width: 200,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                            hintText: 'Country',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16.0),
                          // if (!Responsive.isMobile(context))
                          // Expanded(
                          //   flex: 2,
                          //   child: StarageDetails(),
                          // ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SideMenu extends StatelessWidget {
  final int selected;
  SideMenu({required this.selected});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        // it enables scrolling
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                "images/logo.png",
                width: 100,
              ),
            ),
            DrawerListTile(
              title: "Profile",
              svgSrc: Icon(
                Icons.account_circle_outlined,
                color: selected == 1 ? Colors.white : Colors.black,
                size: 16,
              ),
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              },
              selected: selected == 1 ? true : false,
            ),
            DrawerListTile(
              title: "My Favorite",
              svgSrc: Icon(
                Icons.favorite_border,
                color: selected == 2 ? Colors.white : Colors.black,
                size: 16,
              ),
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyFavorites()));
              },
              selected: selected == 2 ? true : false,
            ),
            DrawerListTile(
              title: "Booking",
              svgSrc: Icon(
                CupertinoIcons.book,
                color: selected == 3 ? Colors.white : Colors.black,
                size: 16,
              ),
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyBookings()));
              },
              selected: selected == 3 ? true : false,
            ),
            DrawerListTile(
              title: "Post A Job",
              svgSrc: Icon(
                Icons.post_add,
                color: selected == 4 ? Colors.white : Colors.black,
                size: 16,
              ),
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PostARequestCustomer()));
              },
              selected: selected == 4 ? true : false,
            ),

            DrawerListTile(
              title: "Inbox",
              svgSrc: Icon(
                Icons.chat,
                color: selected == 5 ? Colors.white : Colors.black,
                size: 16,
              ),
              press: () {},
              selected: selected == 5 ? true : false,
            ),
            DrawerListTile(
              title: "Request",
              svgSrc: Icon(
                Icons.local_post_office_outlined,
                color: selected == 6 ? Colors.white : Colors.black,
                size: 16,
              ),
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Request()));
              },
              selected: selected == 6 ? true : false,
            ),
            DrawerListTile(
              title: "Log Out",
              svgSrc: Icon(
                Icons.logout,
                color: selected == 6 ? Colors.white : Colors.black,
                size: 16,
              ),
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              selected: selected == 6 ? true : false,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    required this.title,
    required this.svgSrc,
    required this.press,
    this.selected = false,
  });

  final String title;
  final svgSrc;
  final VoidCallback press;
  final selected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      selected: selected,
      selectedTileColor: kDarkBlueColor,
      horizontalTitleGap: 0.0,
      leading: svgSrc,
      title: Text(
        title,
        style:
            TextStyle(color: selected == true ? Colors.white : Colors.black87),
      ),
    );
  }
}
