import 'package:flutter/material.dart';
import '../Customer/index_page.dart';
import '../Customer/my_bookings.dart';
import '../Customer/my_favorites.dart';
import '../Customer/post_a_request_customer.dart';
import '../Customer/profile.dart';
import '../Provider/provider_dashboard.dart';
import '../authentication/register_screen.dart';

class DashboardMobile extends StatefulWidget {
  const DashboardMobile({Key? key}) : super(key: key);

  @override
  _DashboardMobileState createState() => _DashboardMobileState();
}

class _DashboardMobileState extends State<DashboardMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70.withOpacity(0.96),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
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
                                      builder: (context) => const Profile()));
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
                                          const MyFavorites()));
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
                                      builder: (context) =>
                                          const MyBookings()));
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
                                          const RegisterScreen()));
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
