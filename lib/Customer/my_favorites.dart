import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skilled_bob_app_web/Providers/menu_controller.dart';
import 'package:skilled_bob_app_web/responsive.dart';

import '../Provider/provider_profile_screen.dart';
import '../constant.dart';
import 'dashboard.dart';

class MyFavorites extends StatefulWidget {
  static const String id = 'MyFavorites';
  const MyFavorites({Key? key}) : super(key: key);

  @override
  _MyFavoritesState createState() => _MyFavoritesState();
}

class _MyFavoritesState extends State<MyFavorites> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool convert = false;
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            //iconTheme: const IconThemeData(color: Colors.white),
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              color: Colors.blueAccent,
              icon: const Icon(
                Icons.arrow_back_ios_sharp,
                color: kDarkBlueColor,
                size: 26,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text(
              'My Favorites',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kDarkBlueColor,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            titleSpacing: 0,
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Get.toNamed(RouteName.myServiceDetailRoute);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      // margin: const EdgeInsets.symmetric(
                      //     horizontal: 20, vertical: 10),
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
                        border:
                            Border.all(color: Colors.black87.withOpacity(0.05)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(children: [
                            Hero(
                              tag: '',
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'images/painting.jpg',
                                  height: 100,
                                  width: 100,
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
                          const SizedBox(width: 10),
                          Expanded(
                            child: Wrap(
                              runSpacing: 6,
                              alignment: WrapAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    const Expanded(
                                        child: Text('Car Service',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                height: 1.3,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold))),
                                    IconButton(
                                        onPressed: () {
                                          // setState(() {
                                          //   _isFavorited =
                                          //   !_isFavorited;
                                          // });
                                        },
                                        icon:
                                            // _isFavorited
                                            //     ?
                                            const Icon(Icons.favorite)
                                        // : const Icon(Icons
                                        // .favorite_border)
                                        )

                                    // BookingOptionsPopupMenuWidget()
                                  ],
                                ),
                                // const Divider(
                                //   height: 3,
                                //   thickness: 0.5,
                                // ),
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
                                                height: 30,
                                                child: Chip(
                                                    padding:
                                                        const EdgeInsets.all(0),
                                                    label: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const <
                                                            Widget>[
                                                          Icon(Icons.star,
                                                              color: kLightBlue,
                                                              size: 16),
                                                          Text('3.45',
                                                              style: TextStyle(
                                                                  color:
                                                                      kLightBlue,
                                                                  height: 1.3))
                                                        ]),
                                                    backgroundColor: kLightBlue
                                                        .withOpacity(0.15),
                                                    shape:
                                                        const StadiumBorder())),
                                            const Text('(44)',
                                                style: TextStyle(
                                                    color: kLightBlue,
                                                    height: 1.3))
                                          ]),
                                    ]),
                                const Divider(height: 3, thickness: 0.5),
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
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.grey))
                                    ]),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Get.toNamed(RouteName.myServiceDetailRoute);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      // margin: const EdgeInsets.symmetric(
                      //     horizontal: 20, vertical: 10),
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
                        border:
                            Border.all(color: Colors.black87.withOpacity(0.05)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(children: [
                            Hero(
                              tag: '',
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'images/painting.jpg',
                                  height: 100,
                                  width: 100,
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
                          const SizedBox(width: 10),
                          Expanded(
                            child: Wrap(
                              runSpacing: 6,
                              alignment: WrapAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    const Expanded(
                                        child: Text('Car Service',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                height: 1.3,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold))),
                                    IconButton(
                                        onPressed: () {
                                          // setState(() {
                                          //   _isFavorited =
                                          //   !_isFavorited;
                                          // });
                                        },
                                        icon:
                                            // _isFavorited
                                            //     ?
                                            const Icon(Icons.favorite)
                                        // : const Icon(Icons
                                        // .favorite_border)
                                        )

                                    // BookingOptionsPopupMenuWidget()
                                  ],
                                ),
                                // const Divider(
                                //   height: 3,
                                //   thickness: 0.5,
                                // ),
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
                                                height: 30,
                                                child: Chip(
                                                    padding:
                                                        const EdgeInsets.all(0),
                                                    label: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const <
                                                            Widget>[
                                                          Icon(Icons.star,
                                                              color: kLightBlue,
                                                              size: 16),
                                                          Text('3.45',
                                                              style: TextStyle(
                                                                  color:
                                                                      kLightBlue,
                                                                  height: 1.3))
                                                        ]),
                                                    backgroundColor: kLightBlue
                                                        .withOpacity(0.15),
                                                    shape:
                                                        const StadiumBorder())),
                                            const Text('(44)',
                                                style: TextStyle(
                                                    color: kLightBlue,
                                                    height: 1.3))
                                          ]),
                                    ]),
                                const Divider(height: 3, thickness: 0.5),
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
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.grey))
                                    ]),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Get.toNamed(RouteName.myServiceDetailRoute);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      // margin: const EdgeInsets.symmetric(
                      //     horizontal: 20, vertical: 10),
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
                        border:
                            Border.all(color: Colors.black87.withOpacity(0.05)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(children: [
                            Hero(
                              tag: '',
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'images/painting.jpg',
                                  height: 100,
                                  width: 100,
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
                          const SizedBox(width: 10),
                          Expanded(
                            child: Wrap(
                              runSpacing: 6,
                              alignment: WrapAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    const Expanded(
                                        child: Text('Car Service',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                height: 1.3,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold))),
                                    IconButton(
                                        onPressed: () {
                                          // setState(() {
                                          //   _isFavorited =
                                          //   !_isFavorited;
                                          // });
                                        },
                                        icon:
                                            // _isFavorited
                                            //     ?
                                            const Icon(Icons.favorite)
                                        // : const Icon(Icons
                                        // .favorite_border)
                                        )

                                    // BookingOptionsPopupMenuWidget()
                                  ],
                                ),
                                // const Divider(
                                //   height: 3,
                                //   thickness: 0.5,
                                // ),
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
                                                height: 30,
                                                child: Chip(
                                                    padding:
                                                        const EdgeInsets.all(0),
                                                    label: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const <
                                                            Widget>[
                                                          Icon(Icons.star,
                                                              color: kLightBlue,
                                                              size: 16),
                                                          Text('3.45',
                                                              style: TextStyle(
                                                                  color:
                                                                      kLightBlue,
                                                                  height: 1.3))
                                                        ]),
                                                    backgroundColor: kLightBlue
                                                        .withOpacity(0.15),
                                                    shape:
                                                        const StadiumBorder())),
                                            const Text('(44)',
                                                style: TextStyle(
                                                    color: kLightBlue,
                                                    height: 1.3))
                                          ]),
                                    ]),
                                const Divider(height: 3, thickness: 0.5),
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
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.grey))
                                    ]),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Get.toNamed(RouteName.myServiceDetailRoute);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      // margin: const EdgeInsets.symmetric(
                      //     horizontal: 20, vertical: 10),
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
                        border:
                            Border.all(color: Colors.black87.withOpacity(0.05)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(children: [
                            Hero(
                              tag: '',
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'images/painting.jpg',
                                  height: 100,
                                  width: 100,
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
                          const SizedBox(width: 10),
                          Expanded(
                            child: Wrap(
                              runSpacing: 6,
                              alignment: WrapAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    const Expanded(
                                        child: Text('Car Service',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                height: 1.3,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold))),
                                    IconButton(
                                        onPressed: () {
                                          // setState(() {
                                          //   _isFavorited =
                                          //   !_isFavorited;
                                          // });
                                        },
                                        icon:
                                            // _isFavorited
                                            //     ?
                                            const Icon(Icons.favorite)
                                        // : const Icon(Icons
                                        // .favorite_border)
                                        )

                                    // BookingOptionsPopupMenuWidget()
                                  ],
                                ),
                                // const Divider(
                                //   height: 3,
                                //   thickness: 0.5,
                                // ),
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
                                                height: 30,
                                                child: Chip(
                                                    padding:
                                                        const EdgeInsets.all(0),
                                                    label: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const <
                                                            Widget>[
                                                          Icon(Icons.star,
                                                              color: kLightBlue,
                                                              size: 16),
                                                          Text('3.45',
                                                              style: TextStyle(
                                                                  color:
                                                                      kLightBlue,
                                                                  height: 1.3))
                                                        ]),
                                                    backgroundColor: kLightBlue
                                                        .withOpacity(0.15),
                                                    shape:
                                                        const StadiumBorder())),
                                            const Text('(44)',
                                                style: TextStyle(
                                                    color: kLightBlue,
                                                    height: 1.3))
                                          ]),
                                    ]),
                                const Divider(height: 3, thickness: 0.5),
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
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.grey))
                                    ]),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Get.toNamed(RouteName.myServiceDetailRoute);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      // margin: const EdgeInsets.symmetric(
                      //     horizontal: 20, vertical: 10),
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
                        border:
                            Border.all(color: Colors.black87.withOpacity(0.05)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(children: [
                            Hero(
                              tag: '',
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'images/painting.jpg',
                                  height: 100,
                                  width: 100,
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
                          const SizedBox(width: 10),
                          Expanded(
                            child: Wrap(
                              runSpacing: 6,
                              alignment: WrapAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    const Expanded(
                                        child: Text('Car Service',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                height: 1.3,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold))),
                                    IconButton(
                                        onPressed: () {
                                          // setState(() {
                                          //   _isFavorited =
                                          //   !_isFavorited;
                                          // });
                                        },
                                        icon:
                                            // _isFavorited
                                            //     ?
                                            const Icon(Icons.favorite)
                                        // : const Icon(Icons
                                        // .favorite_border)
                                        )

                                    // BookingOptionsPopupMenuWidget()
                                  ],
                                ),
                                // const Divider(
                                //   height: 3,
                                //   thickness: 0.5,
                                // ),
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
                                                height: 30,
                                                child: Chip(
                                                    padding:
                                                        const EdgeInsets.all(0),
                                                    label: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const <
                                                            Widget>[
                                                          Icon(Icons.star,
                                                              color: kLightBlue,
                                                              size: 16),
                                                          Text('3.45',
                                                              style: TextStyle(
                                                                  color:
                                                                      kLightBlue,
                                                                  height: 1.3))
                                                        ]),
                                                    backgroundColor: kLightBlue
                                                        .withOpacity(0.15),
                                                    shape:
                                                        const StadiumBorder())),
                                            const Text('(44)',
                                                style: TextStyle(
                                                    color: kLightBlue,
                                                    height: 1.3))
                                          ]),
                                    ]),
                                const Divider(height: 3, thickness: 0.5),
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
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.grey))
                                    ]),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // bottomNavigationBar: BottomAppBar(
          //   child: Container(
          //     height: 80.0,
          //     width: double.maxFinite,
          //     decoration: BoxDecoration(
          //       color: Colors.white60.withOpacity(0.9),
          //       borderRadius: const BorderRadius.vertical(
          //         top: Radius.circular(20.0),
          //       ),
          //     ),
          //     child: Row(
          //       mainAxisSize: MainAxisSize.max,
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: <Widget>[
          //         Expanded(
          //           child: Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 28.0),
          //             child: RaisedButton(
          //               onPressed: () {
          //                 Navigator.pushReplacement(
          //                     context,
          //                     MaterialPageRoute(
          //                         builder: (context) => IndexPage()));
          //               },
          //               child: const Text('Send Request'),
          //               color: Colors.blue,
          //               textColor: Colors.white,
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ),
      ),
      tablet: Container(child: Text('Tablet')),
      desktop: Scaffold(
        key: _scaffoldKey,
        drawer: SideMenu(
          selected: 2,
        ),
        body: SafeArea(
          child: Row(
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  // flex: 1, (default)
                  child: SideMenu(
                    selected: 2,
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
                            "My Favorites",
                            style: Theme.of(context).textTheme.headline5,
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

                                      Navigator.pushReplacementNamed(
                                          context, ProviderProfileScreen.id);
                                    });
                                  }),
                            ),
                          ),
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
                          //         onChanged: (value) {},
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
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0,
                                      vertical: 8,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            // Get.toNamed(RouteName.myServiceDetailRoute);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 10),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black87
                                                        .withOpacity(0.1),
                                                    blurRadius: 10,
                                                    offset: const Offset(0, 5))
                                              ],
                                              border: Border.all(
                                                  color: Colors.black87
                                                      .withOpacity(0.05)),
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Hero(
                                                    tag: '',
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      child: Image.asset(
                                                        'images/painting.jpg',
                                                        height: 150,
                                                        width: 150,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),

                                                  //
                                                ]),
                                                const SizedBox(width: 10),
                                                Expanded(
                                                  child: Wrap(
                                                    runSpacing: 6,
                                                    alignment:
                                                        WrapAlignment.start,
                                                    children: <Widget>[
                                                      Row(
                                                        children: [
                                                          const Expanded(
                                                              child: Text(
                                                                  'Car Service',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black87,
                                                                      height:
                                                                          1.3,
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold))),
                                                          IconButton(
                                                              onPressed: () {
                                                                // setState(() {
                                                                //   _isFavorited =
                                                                //   !_isFavorited;
                                                                // });
                                                              },
                                                              icon:
                                                                  // _isFavorited
                                                                  //     ?
                                                                  const Icon(Icons
                                                                      .favorite)
                                                              // : const Icon(Icons
                                                              // .favorite_border)
                                                              )

                                                          // BookingOptionsPopupMenuWidget()
                                                        ],
                                                      ),
                                                      // const Divider(
                                                      //   height: 3,
                                                      //   thickness: 0.5,
                                                      // ),
                                                      Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Wrap(
                                                                crossAxisAlignment:
                                                                    WrapCrossAlignment
                                                                        .center,
                                                                spacing: 5,
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          30,
                                                                      child: Chip(
                                                                          padding: const EdgeInsets.all(0),
                                                                          label: Row(mainAxisAlignment: MainAxisAlignment.center, children: const <Widget>[
                                                                            Icon(Icons.star,
                                                                                color: kLightBlue,
                                                                                size: 16),
                                                                            Text('3.45',
                                                                                style: TextStyle(color: kLightBlue, height: 1.3))
                                                                          ]),
                                                                          backgroundColor: kLightBlue.withOpacity(0.15),
                                                                          shape: const StadiumBorder())),
                                                                  const Text(
                                                                      '(44)',
                                                                      style: TextStyle(
                                                                          color:
                                                                              kLightBlue,
                                                                          height:
                                                                              1.3))
                                                                ]),
                                                          ]),
                                                      const Divider(
                                                          height: 3,
                                                          thickness: 0.5),
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text('Description',
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        17.0,
                                                                    color: Colors
                                                                        .black87)),
                                                            Text(
                                                                'We are providing high quality services to our customers. You are our first priority. We are providing high quality services to our customers. You are our first priority. We are providing high quality services to our customers. You are our first priority. We are providing high quality services to our customers. You are our first priority.',
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        15.0,
                                                                    color: Colors
                                                                        .grey))
                                                          ]),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            // Get.toNamed(RouteName.myServiceDetailRoute);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 10),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black87
                                                        .withOpacity(0.1),
                                                    blurRadius: 10,
                                                    offset: const Offset(0, 5))
                                              ],
                                              border: Border.all(
                                                  color: Colors.black87
                                                      .withOpacity(0.05)),
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Hero(
                                                    tag: '',
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      child: Image.asset(
                                                        'images/painting.jpg',
                                                        height: 150,
                                                        width: 150,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),

                                                  //
                                                ]),
                                                const SizedBox(width: 10),
                                                Expanded(
                                                  child: Wrap(
                                                    runSpacing: 6,
                                                    alignment:
                                                        WrapAlignment.start,
                                                    children: <Widget>[
                                                      Row(
                                                        children: [
                                                          const Expanded(
                                                              child: Text(
                                                                  'Car Service',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black87,
                                                                      height:
                                                                          1.3,
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold))),
                                                          IconButton(
                                                              onPressed: () {
                                                                // setState(() {
                                                                //   _isFavorited =
                                                                //   !_isFavorited;
                                                                // });
                                                              },
                                                              icon:
                                                                  // _isFavorited
                                                                  //     ?
                                                                  const Icon(Icons
                                                                      .favorite)
                                                              // : const Icon(Icons
                                                              // .favorite_border)
                                                              )

                                                          // BookingOptionsPopupMenuWidget()
                                                        ],
                                                      ),
                                                      // const Divider(
                                                      //   height: 3,
                                                      //   thickness: 0.5,
                                                      // ),
                                                      Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Wrap(
                                                                crossAxisAlignment:
                                                                    WrapCrossAlignment
                                                                        .center,
                                                                spacing: 5,
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          30,
                                                                      child: Chip(
                                                                          padding: const EdgeInsets.all(0),
                                                                          label: Row(mainAxisAlignment: MainAxisAlignment.center, children: const <Widget>[
                                                                            Icon(Icons.star,
                                                                                color: kLightBlue,
                                                                                size: 16),
                                                                            Text('3.45',
                                                                                style: TextStyle(color: kLightBlue, height: 1.3))
                                                                          ]),
                                                                          backgroundColor: kLightBlue.withOpacity(0.15),
                                                                          shape: const StadiumBorder())),
                                                                  const Text(
                                                                      '(44)',
                                                                      style: TextStyle(
                                                                          color:
                                                                              kLightBlue,
                                                                          height:
                                                                              1.3))
                                                                ]),
                                                          ]),
                                                      const Divider(
                                                          height: 3,
                                                          thickness: 0.5),
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text('Description',
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        17.0,
                                                                    color: Colors
                                                                        .black87)),
                                                            Text(
                                                                'We are providing high quality services to our customers. You are our first priority. We are providing high quality services to our customers. You are our first priority. We are providing high quality services to our customers. You are our first priority. We are providing high quality services to our customers. You are our first priority.',
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        15.0,
                                                                    color: Colors
                                                                        .grey))
                                                          ]),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            // Get.toNamed(RouteName.myServiceDetailRoute);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 10),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black87
                                                        .withOpacity(0.1),
                                                    blurRadius: 10,
                                                    offset: const Offset(0, 5))
                                              ],
                                              border: Border.all(
                                                  color: Colors.black87
                                                      .withOpacity(0.05)),
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Hero(
                                                    tag: '',
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      child: Image.asset(
                                                        'images/painting.jpg',
                                                        height: 150,
                                                        width: 150,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),

                                                  //
                                                ]),
                                                const SizedBox(width: 10),
                                                Expanded(
                                                  child: Wrap(
                                                    runSpacing: 6,
                                                    alignment:
                                                        WrapAlignment.start,
                                                    children: <Widget>[
                                                      Row(
                                                        children: [
                                                          const Expanded(
                                                              child: Text(
                                                                  'Car Service',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black87,
                                                                      height:
                                                                          1.3,
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold))),
                                                          IconButton(
                                                              onPressed: () {
                                                                // setState(() {
                                                                //   _isFavorited =
                                                                //   !_isFavorited;
                                                                // });
                                                              },
                                                              icon:
                                                                  // _isFavorited
                                                                  //     ?
                                                                  const Icon(Icons
                                                                      .favorite)
                                                              // : const Icon(Icons
                                                              // .favorite_border)
                                                              )

                                                          // BookingOptionsPopupMenuWidget()
                                                        ],
                                                      ),
                                                      // const Divider(
                                                      //   height: 3,
                                                      //   thickness: 0.5,
                                                      // ),
                                                      Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Wrap(
                                                                crossAxisAlignment:
                                                                    WrapCrossAlignment
                                                                        .center,
                                                                spacing: 5,
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          30,
                                                                      child: Chip(
                                                                          padding: const EdgeInsets.all(0),
                                                                          label: Row(mainAxisAlignment: MainAxisAlignment.center, children: const <Widget>[
                                                                            Icon(Icons.star,
                                                                                color: kLightBlue,
                                                                                size: 16),
                                                                            Text('3.45',
                                                                                style: TextStyle(color: kLightBlue, height: 1.3))
                                                                          ]),
                                                                          backgroundColor: kLightBlue.withOpacity(0.15),
                                                                          shape: const StadiumBorder())),
                                                                  const Text(
                                                                      '(44)',
                                                                      style: TextStyle(
                                                                          color:
                                                                              kLightBlue,
                                                                          height:
                                                                              1.3))
                                                                ]),
                                                          ]),
                                                      const Divider(
                                                          height: 3,
                                                          thickness: 0.5),
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text('Description',
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        17.0,
                                                                    color: Colors
                                                                        .black87)),
                                                            Text(
                                                                'We are providing high quality services to our customers. You are our first priority. We are providing high quality services to our customers. You are our first priority. We are providing high quality services to our customers. You are our first priority. We are providing high quality services to our customers. You are our first priority.',
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        15.0,
                                                                    color: Colors
                                                                        .grey))
                                                          ]),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            // Get.toNamed(RouteName.myServiceDetailRoute);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 10),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black87
                                                        .withOpacity(0.1),
                                                    blurRadius: 10,
                                                    offset: const Offset(0, 5))
                                              ],
                                              border: Border.all(
                                                  color: Colors.black87
                                                      .withOpacity(0.05)),
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Hero(
                                                    tag: '',
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      child: Image.asset(
                                                        'images/painting.jpg',
                                                        height: 150,
                                                        width: 150,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),

                                                  //
                                                ]),
                                                const SizedBox(width: 10),
                                                Expanded(
                                                  child: Wrap(
                                                    runSpacing: 6,
                                                    alignment:
                                                        WrapAlignment.start,
                                                    children: <Widget>[
                                                      Row(
                                                        children: [
                                                          const Expanded(
                                                              child: Text(
                                                                  'Car Service',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black87,
                                                                      height:
                                                                          1.3,
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold))),
                                                          IconButton(
                                                              onPressed: () {
                                                                // setState(() {
                                                                //   _isFavorited =
                                                                //   !_isFavorited;
                                                                // });
                                                              },
                                                              icon:
                                                                  // _isFavorited
                                                                  //     ?
                                                                  const Icon(Icons
                                                                      .favorite)
                                                              // : const Icon(Icons
                                                              // .favorite_border)
                                                              )

                                                          // BookingOptionsPopupMenuWidget()
                                                        ],
                                                      ),
                                                      // const Divider(
                                                      //   height: 3,
                                                      //   thickness: 0.5,
                                                      // ),
                                                      Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Wrap(
                                                                crossAxisAlignment:
                                                                    WrapCrossAlignment
                                                                        .center,
                                                                spacing: 5,
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          30,
                                                                      child: Chip(
                                                                          padding: const EdgeInsets.all(0),
                                                                          label: Row(mainAxisAlignment: MainAxisAlignment.center, children: const <Widget>[
                                                                            Icon(Icons.star,
                                                                                color: kLightBlue,
                                                                                size: 16),
                                                                            Text('3.45',
                                                                                style: TextStyle(color: kLightBlue, height: 1.3))
                                                                          ]),
                                                                          backgroundColor: kLightBlue.withOpacity(0.15),
                                                                          shape: const StadiumBorder())),
                                                                  const Text(
                                                                      '(44)',
                                                                      style: TextStyle(
                                                                          color:
                                                                              kLightBlue,
                                                                          height:
                                                                              1.3))
                                                                ]),
                                                          ]),
                                                      const Divider(
                                                          height: 3,
                                                          thickness: 0.5),
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text('Description',
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        17.0,
                                                                    color: Colors
                                                                        .black87)),
                                                            Text(
                                                                'We are providing high quality services to our customers. You are our first priority. We are providing high quality services to our customers. You are our first priority. We are providing high quality services to our customers. You are our first priority. We are providing high quality services to our customers. You are our first priority.',
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        15.0,
                                                                    color: Colors
                                                                        .grey))
                                                          ]),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            // Get.toNamed(RouteName.myServiceDetailRoute);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 10),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black87
                                                        .withOpacity(0.1),
                                                    blurRadius: 10,
                                                    offset: const Offset(0, 5))
                                              ],
                                              border: Border.all(
                                                  color: Colors.black87
                                                      .withOpacity(0.05)),
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(children: [
                                                  Hero(
                                                    tag: '',
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      child: Image.asset(
                                                        'images/painting.jpg',
                                                        height: 150,
                                                        width: 150,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),

                                                  //
                                                ]),
                                                const SizedBox(width: 10),
                                                Expanded(
                                                  child: Wrap(
                                                    runSpacing: 6,
                                                    alignment:
                                                        WrapAlignment.start,
                                                    children: <Widget>[
                                                      Row(
                                                        children: [
                                                          const Expanded(
                                                              child: Text(
                                                                  'Car Service',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black87,
                                                                      height:
                                                                          1.3,
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold))),
                                                          IconButton(
                                                              onPressed: () {
                                                                // setState(() {
                                                                //   _isFavorited =
                                                                //   !_isFavorited;
                                                                // });
                                                              },
                                                              icon:
                                                                  // _isFavorited
                                                                  //     ?
                                                                  const Icon(Icons
                                                                      .favorite)
                                                              // : const Icon(Icons
                                                              // .favorite_border)
                                                              )

                                                          // BookingOptionsPopupMenuWidget()
                                                        ],
                                                      ),
                                                      // const Divider(
                                                      //   height: 3,
                                                      //   thickness: 0.5,
                                                      // ),
                                                      Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Wrap(
                                                                crossAxisAlignment:
                                                                    WrapCrossAlignment
                                                                        .center,
                                                                spacing: 5,
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          30,
                                                                      child: Chip(
                                                                          padding: const EdgeInsets.all(0),
                                                                          label: Row(mainAxisAlignment: MainAxisAlignment.center, children: const <Widget>[
                                                                            Icon(Icons.star,
                                                                                color: kLightBlue,
                                                                                size: 16),
                                                                            Text('3.45',
                                                                                style: TextStyle(color: kLightBlue, height: 1.3))
                                                                          ]),
                                                                          backgroundColor: kLightBlue.withOpacity(0.15),
                                                                          shape: const StadiumBorder())),
                                                                  const Text(
                                                                      '(44)',
                                                                      style: TextStyle(
                                                                          color:
                                                                              kLightBlue,
                                                                          height:
                                                                              1.3))
                                                                ]),
                                                          ]),
                                                      const Divider(
                                                          height: 3,
                                                          thickness: 0.5),
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text('Description',
                                                                maxLines: 1,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        17.0,
                                                                    color: Colors
                                                                        .black87)),
                                                            Text(
                                                                'We are providing high quality services to our customers. You are our first priority. We are providing high quality services to our customers. You are our first priority. We are providing high quality services to our customers. You are our first priority. We are providing high quality services to our customers. You are our first priority.',
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        15.0,
                                                                    color: Colors
                                                                        .grey))
                                                          ]),
                                                    ],
                                                  ),
                                                )
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
