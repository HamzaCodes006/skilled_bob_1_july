import 'package:flutter/material.dart';
import 'package:skilled_bob_app_web/Customer/dashboard.dart';
import 'package:skilled_bob_app_web/Customer/index_page.dart';
import 'package:skilled_bob_app_web/Provider/post_service_screen.dart';
import 'package:skilled_bob_app_web/Provider/provider_jobs_screen.dart';
import 'package:skilled_bob_app_web/Provider/provider_profile_screen.dart';
import 'package:skilled_bob_app_web/authentication/login_screen.dart';
import 'package:skilled_bob_app_web/authentication/register_screen.dart';

import '../constant.dart';
import 'job_requests.dart';

class ProviderDashboard extends StatefulWidget {
  static const String id = 'ProviderDashboard';
  const ProviderDashboard({Key? key}) : super(key: key);

  @override
  _ProviderDashboardState createState() => _ProviderDashboardState();
}

class _ProviderDashboardState extends State<ProviderDashboard> {
  bool convert = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70.withOpacity(0.96),
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
                    icon: Icons.account_circle_outlined,
                    text: 'My Profile',
                    onPresed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProviderProfileScreen()));
                    },
                  ),
                  // BuildMenuItem(
                  //   icon: Icons.favorite_border,
                  //   text: 'My Favorites',
                  //   onPresed: () {},
                  // ),
                  BuildMenuItem(
                    icon: Icons.shopping_bag_rounded,
                    text: 'My Jobs',
                    onPresed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProviderJobsScreen()));
                    },
                  ),
                  BuildMenuItem(
                    icon: Icons.post_add,
                    text: 'Post My Service',
                    onPresed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PostServiceScreen()));
                    },
                  ),
                  BuildMenuItem(
                    icon: Icons.chat,
                    text: 'Chat',
                    onPresed: () {},
                  ),
                  BuildMenuItem(
                    icon: Icons.request_page_outlined,
                    text: 'Job Requests',
                    onPresed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JobRequests()));
                    },
                  ),
                  BuildMenuItem(
                    icon: Icons.language,
                    text: 'Languages',
                    onPresed: () {
                      //Navigator.pushNamed(context, MyFavorites.id);
                    },
                  ),
                  // BuildMenuItem(
                  //   icon: Icons.settings,
                  //   text: 'Affiliate',
                  //   onPresed: () {},
                  // ),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
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
          // leading: IconButton(
          //   color: Colors.white,
          //   icon: const Icon(
          //     Icons.arrow_back_ios_sharp,
          //     color: Colors.white,
          //     size: 20,
          //   ),
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          // ),
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
                                      builder: (context) =>
                                          ProviderProfileScreen()));
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
                                      builder: (context) =>
                                          ProviderJobsScreen()));
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
                                                Icons.shopping_bag,
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
                                                'My Jobs',
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
                        //my job
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, right: 20, left: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          PostServiceScreen()));
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
                                                'Post My Service',
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
                        //job requests
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, right: 20, left: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => JobRequests()));
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
                                                Icons.request_page_outlined,
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
                                                'Job Requests',
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
                        //switch to customer
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SwitchListTile(
                                title: const Text(
                                  'Provider Mode',
                                  style: kBodyTextBlack,
                                ),
                                subtitle: const Text(
                                  'Turn switch off  to go to Customer Mode.',
                                  style: kBodyTextGrey,
                                ),
                                activeColor: kLightBlue,
                                value: convert,
                                onChanged: (selected) {
                                  setState(() {
                                    convert = !convert;
                                    Navigator.pushReplacementNamed(context, Dashboard.id);
                                  }
                                  );
                                }),
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(
                        //       top: 10.0, right: 20, left: 20),
                        //   child: InkWell(
                        //     onTap: () {
                        //       Navigator.pushReplacement(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (context) => const Dashboard()));
                        //     },
                        //     child: Container(
                        //         decoration: const BoxDecoration(
                        //           color: Colors.white,
                        //           borderRadius:
                        //               BorderRadius.all(Radius.circular(12)),
                        //         ),
                        //         //height: 300,
                        //         child: Column(
                        //           children: [
                        //             Padding(
                        //               padding: const EdgeInsets.all(20.0),
                        //               child: Row(
                        //                 mainAxisAlignment:
                        //                     MainAxisAlignment.spaceBetween,
                        //                 children: [
                        //                   Row(
                        //                     children: [
                        //                       const Icon(
                        //                         Icons.switch_left,
                        //                         color: Colors.blue,
                        //                         size: 25,
                        //                       ),
                        //                       const SizedBox(
                        //                         width: 15,
                        //                       ),
                        //                       Container(
                        //                         color: Colors.black45,
                        //                         height: 26,
                        //                         width: 1.5,
                        //                       ),
                        //                       const SizedBox(
                        //                         width: 15,
                        //                       ),
                        //                       const Text(
                        //                         'Switch To Provider',
                        //                         style: TextStyle(
                        //                           fontSize: 16,
                        //                           fontWeight: FontWeight.bold,
                        //                         ),
                        //                       ),
                        //                     ],
                        //                   ),
                        //                   const Icon(
                        //                     Icons.arrow_forward_ios,
                        //                     size: 17,
                        //                     color: Colors.black54,
                        //                   ),
                        //                 ],
                        //               ),
                        //             ),
                        //           ],
                        //         )),
                        //   ),
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
                        // logout
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, right: 20, left: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterScreen()));
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
    );
  }
}
