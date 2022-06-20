import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skilled_bob_app_web/responsive.dart';

import '../constant.dart';
import '../hover.dart';
import 'category.dart';
import 'dashboard.dart';
import 'index_page.dart';

class PostARequestCustomer extends StatefulWidget {
  static const String id = 'PostARequestCustomer';

  const PostARequestCustomer({Key? key}) : super(key: key);

  @override
  _PostARequestCustomerState createState() => _PostARequestCustomerState();
}

class _PostARequestCustomerState extends State<PostARequestCustomer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> options = [
    'Cook',
    'Painter',
    'Driver',
    'Plumber',
    'Mechanic',
    'Digging',
    'Drilling',
    'Inspection Shafts',
    'Dog Training',
    'Pet Sitting',
    'Ventilation',
    'Cook2',
    'Painter2',
    'Driver2',
    'Plumber2',
    'Mechanic2',
    'Digging2',
    'Drilling2',
    'Inspection Shafts2',
    'Dog Training2',
    'Pet Sitting2',
    'Ventilation2 ',
    'Digging and Drilling'
  ];
  String? jobCategory;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Responsive(
      // desktop: Scaffold(
      //   key: _scaffoldKey,
      //   drawer: SideMenu(
      //     selected: 3,
      //   ),
      //   body: SafeArea(
      //     child: Row(
      //       children: [
      //         if (Responsive.isDesktop(context))
      //           Expanded(
      //             // flex: 1, (default)
      //             child: SideMenu(
      //               selected: 3,
      //             ),
      //           ),
      //         Expanded(
      //           flex: 5,
      //           child: SingleChildScrollView(
      //             scrollDirection: Axis.vertical,
      //             padding: const EdgeInsets.all(16.0),
      //             child: Column(
      //               children: [
      //                 Row(
      //                   children: [
      //                     if (!Responsive.isDesktop(context))
      //                       IconButton(
      //                         onPressed: () {
      //                           //context.read<MenuController>().controlMenu();
      //                         },
      //                         icon: Icon(Icons.menu),
      //                       ),
      //                     Text(
      //                       "Dashboard",
      //                       style: Theme.of(context).textTheme.headline6,
      //                     ),
      //                     Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
      //                     //Expanded(child: SearchField()),
      //                     Container(
      //                       margin: const EdgeInsets.only(left: 16),
      //                       padding: const EdgeInsets.symmetric(
      //                         horizontal: 16,
      //                         vertical: 16 / 2,
      //                       ),
      //                       decoration: BoxDecoration(
      //                         //color: const Color(0xFF2A2D3E),
      //                         borderRadius:
      //                             const BorderRadius.all(Radius.circular(10)),
      //                         border: Border.all(color: Colors.white10),
      //                       ),
      //                       child: Row(
      //                         children: [
      //                           if (!Responsive.isMobile(context))
      //                             const Padding(
      //                               padding: EdgeInsets.symmetric(
      //                                   horizontal: 16 / 2),
      //                               child: Text(
      //                                 "Switch To Provider",
      //                                 style: TextStyle(
      //                                   color: CupertinoColors.black,
      //                                 ),
      //                               ),
      //                             ),
      //                           //Icon(Icons.keyboard_arrow_down),
      //                           Switch.adaptive(
      //                             value: false,
      //                             inactiveThumbColor: Colors.blue,
      //                             inactiveTrackColor: Colors.black45,
      //                             onChanged: (value) {},
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //                 const SizedBox(height: 16.0),
      //                 Row(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Expanded(
      //                       flex: 5,
      //                       child: SizedBox(
      //                         height: MediaQuery.of(context).size.height,
      //                         child: Column(
      //                           children: [
      //                             const SizedBox(height: 16.0),
      //                             Column(
      //                               children: [
      //                                 Padding(
      //                                   padding: const EdgeInsets.fromLTRB(
      //                                       0, 20, 0, 0),
      //                                   child: Row(
      //                                     mainAxisAlignment:
      //                                         MainAxisAlignment.spaceEvenly,
      //                                     children: [
      //                                       RaisedButton(
      //                                         disabledElevation: 0,
      //                                         textColor: Colors.blue,
      //                                         color: Colors.white,
      //                                         onPressed: () {
      //                                           pageController.previousPage(
      //                                               duration: const Duration(
      //                                                   milliseconds: 1000),
      //                                               curve: Curves.bounceOut);
      //                                         },
      //                                         child: const Padding(
      //                                           padding: EdgeInsets.symmetric(
      //                                               horizontal: 20.0),
      //                                           child: Text('Completed'),
      //                                         ),
      //                                       ),
      //                                       RaisedButton(
      //                                         textColor: Colors.blue,
      //                                         color: Colors.white,
      //                                         onPressed: () {
      //                                           pageController.nextPage(
      //                                               duration: const Duration(
      //                                                   milliseconds: 1000),
      //                                               curve: Curves.bounceOut);
      //                                           setState(() {
      //                                             initial_page = 2;
      //                                           });
      //                                         },
      //                                         child: const Padding(
      //                                           padding: EdgeInsets.symmetric(
      //                                               horizontal: 20.0),
      //                                           child: Text('Requested'),
      //                                         ),
      //                                       )
      //                                     ],
      //                                   ),
      //                                 ),
      //                               ],
      //                             ),
      //                             const SizedBox(height: 8.0),
      //                             Expanded(
      //                               child: Container(
      //                                 height: 500,
      //                                 color: Colors.white,
      //                                 child: PageView(
      //                                   controller: pageController,
      //                                   scrollDirection: Axis.horizontal,
      //                                   children: [
      //                                     SingleChildScrollView(
      //                                       physics: BouncingScrollPhysics(),
      //                                       child: Column(
      //                                         children: [
      //                                           Padding(
      //                                             padding:
      //                                                 const EdgeInsets.fromLTRB(
      //                                                     15.0, 35, 15, 5),
      //                                             child: Container(
      //                                               decoration: BoxDecoration(
      //                                                   border: Border.all(
      //                                                       color: Colors.blue,
      //                                                       width: 2),
      //                                                   borderRadius:
      //                                                       const BorderRadius
      //                                                               .all(
      //                                                           Radius.circular(
      //                                                               10))),
      //                                               child: Padding(
      //                                                 padding:
      //                                                     const EdgeInsets.all(
      //                                                         8.0),
      //                                                 child: Column(
      //                                                   children: [
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: const [
      //                                                         Text(
      //                                                           'Car Wash',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 18,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                             fontWeight:
      //                                                                 FontWeight
      //                                                                     .bold,
      //                                                           ),
      //                                                         ),
      //                                                         Text(
      //                                                           '\$15',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 15,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                           ),
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                     const SizedBox(
      //                                                       height: 15,
      //                                                     ),
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: [
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Assigned',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                                 'Muhammad Usama'),
      //                                                           ],
      //                                                         ),
      //                                                         Container(
      //                                                           color: Colors
      //                                                               .black45,
      //                                                           width: 2,
      //                                                           height: 25,
      //                                                         ),
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Location',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                               'Attock, Punjab, Pakistan',
      //                                                               overflow:
      //                                                                   TextOverflow
      //                                                                       .ellipsis,
      //                                                             ),
      //                                                           ],
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                   ],
      //                                                 ),
      //                                               ),
      //                                             ),
      //                                           ),
      //                                           Padding(
      //                                             padding: const EdgeInsets.all(
      //                                                 15.0),
      //                                             child: Container(
      //                                               decoration: BoxDecoration(
      //                                                   border: Border.all(
      //                                                       color: Colors.blue,
      //                                                       width: 2),
      //                                                   borderRadius:
      //                                                       BorderRadius.all(
      //                                                           Radius.circular(
      //                                                               10))),
      //                                               child: Padding(
      //                                                 padding:
      //                                                     const EdgeInsets.all(
      //                                                         8.0),
      //                                                 child: Column(
      //                                                   children: [
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: const [
      //                                                         Text(
      //                                                           'Car Wash',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 18,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                             fontWeight:
      //                                                                 FontWeight
      //                                                                     .bold,
      //                                                           ),
      //                                                         ),
      //                                                         Text(
      //                                                           '\$15',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 15,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                           ),
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                     const SizedBox(
      //                                                       height: 15,
      //                                                     ),
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: [
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Assigned',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                                 'Muhammad Usama'),
      //                                                           ],
      //                                                         ),
      //                                                         Container(
      //                                                           color: Colors
      //                                                               .black45,
      //                                                           width: 2,
      //                                                           height: 25,
      //                                                         ),
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Location',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                               'Attock, Punjab, Pakistan',
      //                                                               overflow:
      //                                                                   TextOverflow
      //                                                                       .ellipsis,
      //                                                             ),
      //                                                           ],
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                   ],
      //                                                 ),
      //                                               ),
      //                                             ),
      //                                           ),
      //                                           Padding(
      //                                             padding: const EdgeInsets.all(
      //                                                 15.0),
      //                                             child: Container(
      //                                               decoration: BoxDecoration(
      //                                                   border: Border.all(
      //                                                       color: Colors.blue,
      //                                                       width: 2),
      //                                                   borderRadius:
      //                                                       BorderRadius.all(
      //                                                           Radius.circular(
      //                                                               10))),
      //                                               child: Padding(
      //                                                 padding:
      //                                                     const EdgeInsets.all(
      //                                                         8.0),
      //                                                 child: Column(
      //                                                   children: [
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: const [
      //                                                         Text(
      //                                                           'Car Wash',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 18,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                             fontWeight:
      //                                                                 FontWeight
      //                                                                     .bold,
      //                                                           ),
      //                                                         ),
      //                                                         Text(
      //                                                           '\$15',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 15,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                           ),
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                     const SizedBox(
      //                                                       height: 15,
      //                                                     ),
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: [
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Assigned',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                                 'Muhammad Usama'),
      //                                                           ],
      //                                                         ),
      //                                                         Container(
      //                                                           color: Colors
      //                                                               .black45,
      //                                                           width: 2,
      //                                                           height: 25,
      //                                                         ),
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Location',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                               'Attock, Punjab, Pakistan',
      //                                                               overflow:
      //                                                                   TextOverflow
      //                                                                       .ellipsis,
      //                                                             ),
      //                                                           ],
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                   ],
      //                                                 ),
      //                                               ),
      //                                             ),
      //                                           ),
      //                                           Padding(
      //                                             padding: const EdgeInsets.all(
      //                                                 15.0),
      //                                             child: Container(
      //                                               decoration: BoxDecoration(
      //                                                   border: Border.all(
      //                                                       color: Colors.blue,
      //                                                       width: 2),
      //                                                   borderRadius:
      //                                                       BorderRadius.all(
      //                                                           Radius.circular(
      //                                                               10))),
      //                                               child: Padding(
      //                                                 padding:
      //                                                     const EdgeInsets.all(
      //                                                         8.0),
      //                                                 child: Column(
      //                                                   children: [
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: const [
      //                                                         Text(
      //                                                           'Car Wash',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 18,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                             fontWeight:
      //                                                                 FontWeight
      //                                                                     .bold,
      //                                                           ),
      //                                                         ),
      //                                                         Text(
      //                                                           '\$15',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 15,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                           ),
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                     const SizedBox(
      //                                                       height: 15,
      //                                                     ),
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: [
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Assigned',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                                 'Muhammad Usama'),
      //                                                           ],
      //                                                         ),
      //                                                         Container(
      //                                                           color: Colors
      //                                                               .black45,
      //                                                           width: 2,
      //                                                           height: 25,
      //                                                         ),
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Location',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                               'Attock, Punjab, Pakistan',
      //                                                               overflow:
      //                                                                   TextOverflow
      //                                                                       .ellipsis,
      //                                                             ),
      //                                                           ],
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                   ],
      //                                                 ),
      //                                               ),
      //                                             ),
      //                                           ),
      //                                           Padding(
      //                                             padding: const EdgeInsets.all(
      //                                                 15.0),
      //                                             child: Container(
      //                                               decoration: BoxDecoration(
      //                                                   border: Border.all(
      //                                                       color: Colors.blue,
      //                                                       width: 2),
      //                                                   borderRadius:
      //                                                       BorderRadius.all(
      //                                                           Radius.circular(
      //                                                               10))),
      //                                               child: Padding(
      //                                                 padding:
      //                                                     const EdgeInsets.all(
      //                                                         8.0),
      //                                                 child: Column(
      //                                                   children: [
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: const [
      //                                                         Text(
      //                                                           'Car Wash',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 18,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                             fontWeight:
      //                                                                 FontWeight
      //                                                                     .bold,
      //                                                           ),
      //                                                         ),
      //                                                         Text(
      //                                                           '\$15',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 15,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                           ),
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                     const SizedBox(
      //                                                       height: 15,
      //                                                     ),
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: [
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Assigned',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                                 'Muhammad Usama'),
      //                                                           ],
      //                                                         ),
      //                                                         Container(
      //                                                           color: Colors
      //                                                               .black45,
      //                                                           width: 2,
      //                                                           height: 25,
      //                                                         ),
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Location',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                               'Attock, Punjab, Pakistan',
      //                                                               overflow:
      //                                                                   TextOverflow
      //                                                                       .ellipsis,
      //                                                             ),
      //                                                           ],
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                   ],
      //                                                 ),
      //                                               ),
      //                                             ),
      //                                           ),
      //                                           Padding(
      //                                             padding: const EdgeInsets.all(
      //                                                 15.0),
      //                                             child: Container(
      //                                               decoration: BoxDecoration(
      //                                                   border: Border.all(
      //                                                       color: Colors.blue,
      //                                                       width: 2),
      //                                                   borderRadius:
      //                                                       BorderRadius.all(
      //                                                           Radius.circular(
      //                                                               10))),
      //                                               child: Padding(
      //                                                 padding:
      //                                                     const EdgeInsets.all(
      //                                                         8.0),
      //                                                 child: Column(
      //                                                   children: [
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: const [
      //                                                         Text(
      //                                                           'Car Wash',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 18,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                             fontWeight:
      //                                                                 FontWeight
      //                                                                     .bold,
      //                                                           ),
      //                                                         ),
      //                                                         Text(
      //                                                           '\$15',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 15,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                           ),
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                     const SizedBox(
      //                                                       height: 15,
      //                                                     ),
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: [
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Assigned',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                                 'Muhammad Usama'),
      //                                                           ],
      //                                                         ),
      //                                                         Container(
      //                                                           color: Colors
      //                                                               .black45,
      //                                                           width: 2,
      //                                                           height: 25,
      //                                                         ),
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Location',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                               'Attock, Punjab, Pakistan',
      //                                                               overflow:
      //                                                                   TextOverflow
      //                                                                       .ellipsis,
      //                                                             ),
      //                                                           ],
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                   ],
      //                                                 ),
      //                                               ),
      //                                             ),
      //                                           ),
      //                                           Padding(
      //                                             padding: const EdgeInsets.all(
      //                                                 15.0),
      //                                             child: Container(
      //                                               decoration: BoxDecoration(
      //                                                   border: Border.all(
      //                                                       color: Colors.blue,
      //                                                       width: 2),
      //                                                   borderRadius:
      //                                                       BorderRadius.all(
      //                                                           Radius.circular(
      //                                                               10))),
      //                                               child: Padding(
      //                                                 padding:
      //                                                     const EdgeInsets.all(
      //                                                         8.0),
      //                                                 child: Column(
      //                                                   children: [
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: const [
      //                                                         Text(
      //                                                           'Car Wash',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 18,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                             fontWeight:
      //                                                                 FontWeight
      //                                                                     .bold,
      //                                                           ),
      //                                                         ),
      //                                                         Text(
      //                                                           '\$15',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 15,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                           ),
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                     const SizedBox(
      //                                                       height: 15,
      //                                                     ),
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: [
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Assigned',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                                 'Muhammad Usama'),
      //                                                           ],
      //                                                         ),
      //                                                         Container(
      //                                                           color: Colors
      //                                                               .black45,
      //                                                           width: 2,
      //                                                           height: 25,
      //                                                         ),
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Location',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                               'Attock, Punjab, Pakistan',
      //                                                               overflow:
      //                                                                   TextOverflow
      //                                                                       .ellipsis,
      //                                                             ),
      //                                                           ],
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                   ],
      //                                                 ),
      //                                               ),
      //                                             ),
      //                                           ),
      //                                         ],
      //                                       ),
      //                                     ),
      //                                     SingleChildScrollView(
      //                                       physics: BouncingScrollPhysics(),
      //                                       child: Column(
      //                                         children: [
      //                                           Padding(
      //                                             padding:
      //                                                 const EdgeInsets.fromLTRB(
      //                                                     15.0, 35, 15, 5),
      //                                             child: Container(
      //                                               decoration: BoxDecoration(
      //                                                   border: Border.all(
      //                                                       color: Colors.blue,
      //                                                       width: 2),
      //                                                   borderRadius:
      //                                                       BorderRadius.all(
      //                                                           Radius.circular(
      //                                                               10))),
      //                                               child: Padding(
      //                                                 padding:
      //                                                     const EdgeInsets.all(
      //                                                         8.0),
      //                                                 child: Column(
      //                                                   children: [
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: const [
      //                                                         Text(
      //                                                           'Car Wash',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 18,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                             fontWeight:
      //                                                                 FontWeight
      //                                                                     .bold,
      //                                                           ),
      //                                                         ),
      //                                                         Text(
      //                                                           '\$15',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 15,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                           ),
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                     const SizedBox(
      //                                                       height: 15,
      //                                                     ),
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: [
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Assigned',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                                 'Muhammad Usama'),
      //                                                           ],
      //                                                         ),
      //                                                         Container(
      //                                                           color: Colors
      //                                                               .black45,
      //                                                           width: 2,
      //                                                           height: 25,
      //                                                         ),
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Location',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                               'Attock, Punjab, Pakistan',
      //                                                               overflow:
      //                                                                   TextOverflow
      //                                                                       .ellipsis,
      //                                                             ),
      //                                                           ],
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                   ],
      //                                                 ),
      //                                               ),
      //                                             ),
      //                                           ),
      //                                           Padding(
      //                                             padding: const EdgeInsets.all(
      //                                                 15.0),
      //                                             child: Container(
      //                                               decoration: BoxDecoration(
      //                                                   border: Border.all(
      //                                                       color: Colors.blue,
      //                                                       width: 2),
      //                                                   borderRadius:
      //                                                       BorderRadius.all(
      //                                                           Radius.circular(
      //                                                               10))),
      //                                               child: Padding(
      //                                                 padding:
      //                                                     const EdgeInsets.all(
      //                                                         8.0),
      //                                                 child: Column(
      //                                                   children: [
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: const [
      //                                                         Text(
      //                                                           'Car Wash',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 18,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                             fontWeight:
      //                                                                 FontWeight
      //                                                                     .bold,
      //                                                           ),
      //                                                         ),
      //                                                         Text(
      //                                                           '\$15',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 15,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                           ),
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                     const SizedBox(
      //                                                       height: 15,
      //                                                     ),
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: [
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Assigned',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                                 'Muhammad Usama'),
      //                                                           ],
      //                                                         ),
      //                                                         Container(
      //                                                           color: Colors
      //                                                               .black45,
      //                                                           width: 2,
      //                                                           height: 25,
      //                                                         ),
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Location',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                               'Attock, Punjab, Pakistan',
      //                                                               overflow:
      //                                                                   TextOverflow
      //                                                                       .ellipsis,
      //                                                             ),
      //                                                           ],
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                   ],
      //                                                 ),
      //                                               ),
      //                                             ),
      //                                           ),
      //                                           Padding(
      //                                             padding: const EdgeInsets.all(
      //                                                 15.0),
      //                                             child: Container(
      //                                               decoration: BoxDecoration(
      //                                                   border: Border.all(
      //                                                       color: Colors.blue,
      //                                                       width: 2),
      //                                                   borderRadius:
      //                                                       BorderRadius.all(
      //                                                           Radius.circular(
      //                                                               10))),
      //                                               child: Padding(
      //                                                 padding:
      //                                                     const EdgeInsets.all(
      //                                                         8.0),
      //                                                 child: Column(
      //                                                   children: [
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: const [
      //                                                         Text(
      //                                                           'Car Wash',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 18,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                             fontWeight:
      //                                                                 FontWeight
      //                                                                     .bold,
      //                                                           ),
      //                                                         ),
      //                                                         Text(
      //                                                           '\$15',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 15,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                           ),
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                     const SizedBox(
      //                                                       height: 15,
      //                                                     ),
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: [
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Assigned',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                                 'Muhammad Usama'),
      //                                                           ],
      //                                                         ),
      //                                                         Container(
      //                                                           color: Colors
      //                                                               .black45,
      //                                                           width: 2,
      //                                                           height: 25,
      //                                                         ),
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Location',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                               'Attock, Punjab, Pakistan',
      //                                                               overflow:
      //                                                                   TextOverflow
      //                                                                       .ellipsis,
      //                                                             ),
      //                                                           ],
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                   ],
      //                                                 ),
      //                                               ),
      //                                             ),
      //                                           ),
      //                                           Padding(
      //                                             padding: const EdgeInsets.all(
      //                                                 15.0),
      //                                             child: Container(
      //                                               decoration: BoxDecoration(
      //                                                   border: Border.all(
      //                                                       color: Colors.blue,
      //                                                       width: 2),
      //                                                   borderRadius:
      //                                                       BorderRadius.all(
      //                                                           Radius.circular(
      //                                                               10))),
      //                                               child: Padding(
      //                                                 padding:
      //                                                     const EdgeInsets.all(
      //                                                         8.0),
      //                                                 child: Column(
      //                                                   children: [
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: const [
      //                                                         Text(
      //                                                           'Car Wash',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 18,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                             fontWeight:
      //                                                                 FontWeight
      //                                                                     .bold,
      //                                                           ),
      //                                                         ),
      //                                                         Text(
      //                                                           '\$15',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 15,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                           ),
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                     const SizedBox(
      //                                                       height: 15,
      //                                                     ),
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: [
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Assigned',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                                 'Muhammad Usama'),
      //                                                           ],
      //                                                         ),
      //                                                         Container(
      //                                                           color: Colors
      //                                                               .black45,
      //                                                           width: 2,
      //                                                           height: 25,
      //                                                         ),
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Location',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                               'Attock, Punjab, Pakistan',
      //                                                               overflow:
      //                                                                   TextOverflow
      //                                                                       .ellipsis,
      //                                                             ),
      //                                                           ],
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                   ],
      //                                                 ),
      //                                               ),
      //                                             ),
      //                                           ),
      //                                           Padding(
      //                                             padding: const EdgeInsets.all(
      //                                                 15.0),
      //                                             child: Container(
      //                                               decoration: BoxDecoration(
      //                                                   border: Border.all(
      //                                                       color: Colors.blue,
      //                                                       width: 2),
      //                                                   borderRadius:
      //                                                       BorderRadius.all(
      //                                                           Radius.circular(
      //                                                               10))),
      //                                               child: Padding(
      //                                                 padding:
      //                                                     const EdgeInsets.all(
      //                                                         8.0),
      //                                                 child: Column(
      //                                                   children: [
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: const [
      //                                                         Text(
      //                                                           'Car Wash',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 18,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                             fontWeight:
      //                                                                 FontWeight
      //                                                                     .bold,
      //                                                           ),
      //                                                         ),
      //                                                         Text(
      //                                                           '\$15',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 15,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                           ),
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                     const SizedBox(
      //                                                       height: 15,
      //                                                     ),
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: [
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Assigned',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                                 'Muhammad Usama'),
      //                                                           ],
      //                                                         ),
      //                                                         Container(
      //                                                           color: Colors
      //                                                               .black45,
      //                                                           width: 2,
      //                                                           height: 25,
      //                                                         ),
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Location',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                               'Attock, Punjab, Pakistan',
      //                                                               overflow:
      //                                                                   TextOverflow
      //                                                                       .ellipsis,
      //                                                             ),
      //                                                           ],
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                   ],
      //                                                 ),
      //                                               ),
      //                                             ),
      //                                           ),
      //                                           Padding(
      //                                             padding: const EdgeInsets.all(
      //                                                 15.0),
      //                                             child: Container(
      //                                               decoration: BoxDecoration(
      //                                                   border: Border.all(
      //                                                       color: Colors.blue,
      //                                                       width: 2),
      //                                                   borderRadius:
      //                                                       BorderRadius.all(
      //                                                           Radius.circular(
      //                                                               10))),
      //                                               child: Padding(
      //                                                 padding:
      //                                                     const EdgeInsets.all(
      //                                                         8.0),
      //                                                 child: Column(
      //                                                   children: [
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: const [
      //                                                         Text(
      //                                                           'Car Wash',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 18,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                             fontWeight:
      //                                                                 FontWeight
      //                                                                     .bold,
      //                                                           ),
      //                                                         ),
      //                                                         Text(
      //                                                           '\$15',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 15,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                           ),
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                     const SizedBox(
      //                                                       height: 15,
      //                                                     ),
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: [
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Assigned',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                                 'Muhammad Usama'),
      //                                                           ],
      //                                                         ),
      //                                                         Container(
      //                                                           color: Colors
      //                                                               .black45,
      //                                                           width: 2,
      //                                                           height: 25,
      //                                                         ),
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Location',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                               'Attock, Punjab, Pakistan',
      //                                                               overflow:
      //                                                                   TextOverflow
      //                                                                       .ellipsis,
      //                                                             ),
      //                                                           ],
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                   ],
      //                                                 ),
      //                                               ),
      //                                             ),
      //                                           ),
      //                                           Padding(
      //                                             padding: const EdgeInsets.all(
      //                                                 15.0),
      //                                             child: Container(
      //                                               decoration: BoxDecoration(
      //                                                   border: Border.all(
      //                                                       color: Colors.blue,
      //                                                       width: 2),
      //                                                   borderRadius:
      //                                                       BorderRadius.all(
      //                                                           Radius.circular(
      //                                                               10))),
      //                                               child: Padding(
      //                                                 padding:
      //                                                     const EdgeInsets.all(
      //                                                         8.0),
      //                                                 child: Column(
      //                                                   children: [
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: const [
      //                                                         Text(
      //                                                           'Car Wash',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 18,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                             fontWeight:
      //                                                                 FontWeight
      //                                                                     .bold,
      //                                                           ),
      //                                                         ),
      //                                                         Text(
      //                                                           '\$15',
      //                                                           style:
      //                                                               TextStyle(
      //                                                             fontSize: 15,
      //                                                             fontFamily:
      //                                                                 'Open Sans',
      //                                                           ),
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                     const SizedBox(
      //                                                       height: 15,
      //                                                     ),
      //                                                     Row(
      //                                                       mainAxisAlignment:
      //                                                           MainAxisAlignment
      //                                                               .spaceBetween,
      //                                                       children: [
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Assigned',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                                 'Muhammad Usama'),
      //                                                           ],
      //                                                         ),
      //                                                         Container(
      //                                                           color: Colors
      //                                                               .black45,
      //                                                           width: 2,
      //                                                           height: 25,
      //                                                         ),
      //                                                         Column(
      //                                                           crossAxisAlignment:
      //                                                               CrossAxisAlignment
      //                                                                   .start,
      //                                                           children: const [
      //                                                             Text(
      //                                                               'Location',
      //                                                               style: TextStyle(
      //                                                                   color: Colors
      //                                                                       .black54),
      //                                                             ),
      //                                                             Text(
      //                                                               'Attock, Punjab, Pakistan',
      //                                                               overflow:
      //                                                                   TextOverflow
      //                                                                       .ellipsis,
      //                                                             ),
      //                                                           ],
      //                                                         ),
      //                                                       ],
      //                                                     ),
      //                                                   ],
      //                                                 ),
      //                                               ),
      //                                             ),
      //                                           ),
      //                                         ],
      //                                       ),
      //                                     ),
      //                                   ],
      //                                 ),
      //                               ),
      //                             ),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                     SizedBox(width: 16.0),
      //                     // if (!Responsive.isMobile(context))
      //                     // Expanded(
      //                     //   flex: 2,
      //                     //   child: StarageDetails(),
      //                     // ),
      //                   ],
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      desktop: Container(
        child: Text('working on it',
            style: TextStyle(
              fontSize: 40,
            )),
      ),
      tablet: Container(
        child: Text('Tablet screen'),
      ),
      mobile: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(
              'Post A Job',
              style: TextStyle(color: kLightBlue),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_sharp,
                color: kLightBlue,
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 5,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Form(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //job category
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 25.0),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: kLightBlue,
                                width: 1,
                              ),
                            ),
                            child: Container(
                              width: size.width,
                              height: size.height * 0.06,
                              decoration: BoxDecoration(
                                color: Colors.blue[200]!.withOpacity(0.4),
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                                // border: Border.all(color: kLightBlue, width: 1,),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.category_outlined,
                                      color: kLightBlue,
                                      size: 22.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: DropdownButton<String>(
                                      // focusColor: Colors.red,

                                      dropdownColor:
                                          kLightBlue.withOpacity(0.8),
                                      itemHeight: 60.0,
                                      hint: const Text(
                                        'Select Job Category',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      // value: jobCategory,
                                      icon: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30.0),
                                        child: Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: kLightBlue,
                                          size: 22,
                                        ),
                                      ),
                                      underline: const SizedBox(),
                                      iconSize: 22.0,
                                      style: kBodyText,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          jobCategory = newValue;
                                        });
                                      },
                                      value: jobCategory,
                                      // newValue // selectedItemBuilder: (BuildContext context) {
                                      //   return options.map((String value) {
                                      //     return Text(
                                      //       dropdownValue,
                                      //       style: const TextStyle(color: Colors.black87),
                                      //     );
                                      //   }).toList();
                                      // },
                                      items: options
                                          .map<DropdownMenuItem<String>>(
                                              (String value) {
                                        return DropdownMenuItem<String>(
                                          onTap: () {
                                            setState(() {
                                              jobCategory = value;
                                            });
                                          },
                                          alignment: Alignment.center,
                                          value: value,
                                          child: Text(
                                            value,
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //upload
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 25.0),
                          child: Container(
                            width: size.width,
                            height: size.height * 0.13,
                            decoration: BoxDecoration(
                              color: Colors.blue[200]!.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: kLightBlue,
                                width: 1,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/upload.png',
                                  height: 70,
                                  color: kDarkBlueColor,
                                ),
                                const Text(
                                  'Click to upload Image or Video.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //location
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 25.0),
                          child: TextFormField(
                            maxLines: 3,
                            style: const TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white),
                            decoration: InputDecoration(
                              fillColor: Colors.blue[200]!.withOpacity(0.4),
                              filled: true,
                              hoverColor: kDarkBlue,
                              // helperText: 'Add Text',
                              hintStyle: const TextStyle(
                                fontSize: 17.0,
                                color: Colors.grey,
                              ),
                              prefixIcon: Icon(
                                Icons.location_on,
                                color: Theme.of(context).primaryColor,
                              ),
                              labelText: 'Location',
                              labelStyle: const TextStyle(
                                fontSize: 17.0,
                                color: Colors.blue,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor),
                              ),
                              // focusColor: kOrange,
                            ),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        //budget
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 25.0),
                          child: TextFormField(
                            maxLength: 10,
                            style: const TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white),
                            decoration: InputDecoration(
                              fillColor: Colors.blue[200]!.withOpacity(0.4),
                              filled: true,
                              hoverColor: kDarkBlue,
                              // helperText: 'Add Text',
                              hintStyle: const TextStyle(
                                fontSize: 17.0,
                                color: Colors.grey,
                              ),
                              prefixIcon: Icon(
                                Icons.money,
                                color: Theme.of(context).primaryColor,
                              ),
                              labelText: 'Job Budget',
                              labelStyle: const TextStyle(
                                fontSize: 17.0,
                                color: Colors.blue,
                              ),
                              contentPadding: EdgeInsets.zero,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor),
                              ),
                              // focusColor: kOrange,
                            ),
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        //Message
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 25.0),
                          child: TextFormField(
                            maxLines: 4,
                            style: const TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white),
                            decoration: InputDecoration(
                              fillColor: Colors.blue[200]!.withOpacity(0.4),
                              filled: true,
                              hoverColor: kDarkBlue,
                              // helperText: 'Add Text',
                              hintStyle: const TextStyle(
                                fontSize: 17.0,
                                color: Colors.grey,
                              ),
                              prefixIcon: Icon(
                                Icons.description,
                                color: Theme.of(context).primaryColor,
                              ),
                              labelText: 'Message',
                              labelStyle: const TextStyle(
                                fontSize: 17.0,
                                color: Colors.blue,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor),
                              ),
                              // focusColor: kOrange,
                            ),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        //post A Job button
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 25.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: size.height * 0.07,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: kLightBlue,
                              ),
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'Post A Job',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ), // Navigator.pushNamed(context, SuccessScreen.id),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
