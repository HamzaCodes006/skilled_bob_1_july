import 'package:flutter/material.dart';
import 'package:skilled_bob_app_web/Customer/index_page.dart';
import 'package:skilled_bob_app_web/constant.dart';

import '../responsive.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = 'RegisterScreen';

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        Container(
          height: size.height * 0.5,
          color: kLightBlue,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.03,
                ),
                Center(
                  child: Column(
                    children: [
                      Container(
                        height: size.height * 0.15,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('images/logo.png'),
                          ),
                        ),
                      ),
                      const Text(
                        'SkilledBob',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  // margin: const EdgeInsets.only(left: 30, top: 500, right: 30, bottom: 100),
                  height: Responsive.hwValue(
                    context,
                    des: size.height * 0.5,
                    teb: size.height * 0.5,
                    mob: size.height * 0.5,
                  ),
                  width: Responsive.hwValue(
                    context,
                    des: size.width * 0.4,
                    teb: size.width * 0.5,
                    mob: size.width * 0.5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    // borderRadius: BorderRadius.circular(0)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: size.height * 0.008,
                            horizontal: size.width * 0.025),
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: size.height * 0.028,
                            // fontWeight: FontWeight.bold,
                            // color: Colors.white
                          ),
                          decoration: InputDecoration(
                            fillColor: Colors.blue[200]!.withOpacity(0.4),
                            filled: true,
                            //hoverColor: kDarkBlue,
                            // helperText: 'Add Text',
                            hintStyle: const TextStyle(
                              fontSize: 17.0,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.account_circle,
                              color: Theme.of(context).primaryColor,
                            ),
                            labelText: 'UserName',
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
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: size.height * 0.008,
                            horizontal: size.width * 0.025),
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: size.height * 0.025,
                            // fontWeight: FontWeight.bold,
                            //color: Colors.white
                          ),
                          decoration: InputDecoration(
                            fillColor: Colors.blue[200]!.withOpacity(0.4),
                            filled: true,
                            //hoverColor: kDarkBlue,
                            // helperText: 'Add Text',
                            hintStyle: const TextStyle(
                              fontSize: 17.0,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Theme.of(context).primaryColor,
                            ),
                            labelText: 'Email',
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
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: size.height * 0.008,
                            horizontal: size.width * 0.025),
                        child: TextFormField(
                          obscureText: true,
                          style: TextStyle(
                            fontSize: size.height * 0.025,
                            // fontWeight: FontWeight.bold,
                            //color: Colors.white
                          ),
                          decoration: InputDecoration(
                            fillColor: Colors.blue[200]!.withOpacity(0.4),
                            filled: true,
                            //hoverColor: kDarkBlue,
                            // helperText: 'Add Text',
                            hintStyle: const TextStyle(
                              fontSize: 17.0,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Theme.of(context).primaryColor,
                            ),
                            labelText: 'Password',
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
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: size.height * 0.008,
                            horizontal: size.width * 0.025),
                        child: TextFormField(
                          obscureText: true,
                          style: TextStyle(
                            fontSize: size.height * 0.025,
                            // fontWeight: FontWeight.bold,
                            //color: Colors.white
                          ),
                          decoration: InputDecoration(
                            fillColor: Colors.blue[200]!.withOpacity(0.4),
                            filled: true,
                            //hoverColor: kDarkBlue,
                            // helperText: 'Add Text',
                            hintStyle: const TextStyle(
                              fontSize: 17.0,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Theme.of(context).primaryColor,
                            ),
                            labelText: 'Confirm Password',
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
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 25.0),
                  child: Container(
                    height: size.height * 0.07,
                    width: Responsive.hwValue(
                      context,
                      des: size.width * 0.4,
                      teb: size.width * 0.5,
                      mob: size.width * 0.5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: kLightBlue,
                    ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const IndexPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?  ',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      },
                      child: Text(
                        'Login',
                        style: kBodyText.copyWith(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
