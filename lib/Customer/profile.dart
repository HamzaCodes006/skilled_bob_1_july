import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  static const String id = 'Profile';

  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70.withOpacity(0.95),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.blueAccent),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            color: Colors.blueAccent,
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.blue,
              size: 26,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Center(
            child: Text(
              'Profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
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
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      borderRadius: const BorderRadius.all(
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
                  padding: const EdgeInsets.only(top: 10.0, bottom: 2),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 18.0, top: 13),
                          child: Text(
                            'Username',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Icon(
                                  Icons.account_circle_outlined,
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
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Username',
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
                  padding: const EdgeInsets.only(top: 2.0, bottom: 2),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 18.0, top: 13),
                          child: Text(
                            'First Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Icon(
                                  Icons.account_circle_outlined,
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
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'First Name',
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
                  padding: const EdgeInsets.only(top: 2.0, bottom: 2),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 18.0, top: 13),
                          child: Text(
                            'Last Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Icon(
                                  Icons.account_circle_outlined,
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
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Last Name',
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
                  padding: const EdgeInsets.only(top: 10.0, bottom: 2),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 18.0, top: 13),
                          child: Text(
                            'Mobile Number',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15.0),
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
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Mobile Number',
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
                  padding: const EdgeInsets.only(top: 2.0, bottom: 2),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 18.0, top: 13),
                          child: Text(
                            'Telephone Number',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15.0),
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
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Telephone Number',
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
                  padding: const EdgeInsets.only(top: 2.0, bottom: 2),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 18.0, top: 13),
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15.0),
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
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
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
                  padding: const EdgeInsets.only(top: 10.0, bottom: 2),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 18.0, top: 13),
                          child: Text(
                            'Address',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15.0),
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
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
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
                  padding: const EdgeInsets.only(top: 2.0, bottom: 2),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 18.0, top: 13),
                          child: Text(
                            'Apt/Suite #',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15.0),
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
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Apt/Suite #',
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
                  padding: const EdgeInsets.only(top: 2.0, bottom: 2),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 18.0, top: 13),
                          child: Text(
                            'City',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15.0),
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
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
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
                  padding: const EdgeInsets.only(top: 2.0, bottom: 2),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 18.0, top: 13),
                          child: Text(
                            'State',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15.0),
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
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
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
                  padding: const EdgeInsets.only(top: 2.0, bottom: 2),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 18.0, top: 13),
                          child: Text(
                            'Country',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15.0),
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
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
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
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 80.0,
            width: double.maxFinite,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(20.0))),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text('Save'),
                      color: Colors.blue,
                      textColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 28.0),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text('Reset'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
