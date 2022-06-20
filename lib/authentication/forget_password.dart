import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:skilled_bob_app_web/responsive.dart';
import '../constant.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              shadowColor: Colors.transparent,
              title: const Text(
                'Back',
                style: TextStyle(
                  color: Colors.black87,
                  fontFamily: 'Open Sans',
                  fontSize: 18,
                ),
              ),
              //centerTitle: true,
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: CircleAvatar(
                    child: Icon(
                      FontAwesomeIcons.questionCircle,
                      color: kDarkBlueColor,
                      size: 25,
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ],
              titleSpacing: 0,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_sharp,
                  color: Colors.black54,
                  size: 20,
                ),
              ),
              backgroundColor: Colors.white,
              elevation: 5,
            ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Responsive.isDesktop(context)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                'Reset',
                                style: TextStyle(
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 34,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Password',
                                style: TextStyle(
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 34,
                                ),
                              ),
                            ],
                          )
                        : Column(
                            children: const [
                              Text(
                                'Reset',
                                style: TextStyle(
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 34,
                                ),
                              ),
                              Text(
                                'Password',
                                style: TextStyle(
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 34,
                                ),
                              ),
                            ],
                          ),

                    const SizedBox(
                      height: 15,
                    ),
                    Responsive.isDesktop(context)
                        ? SizedBox(
                            width: Responsive.isDesktop(context)
                                ? size.width / 2.8
                                : size.width,
                            child: const Text(
                              'Enter email associated with your account and we\'ll send an email with instructions to reset your password.',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        : const Text(
                            'Enter email associated with your account and we\'ll send an email with instructions to reset your password.',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                    Responsive.isDesktop(context)
                        ? SizedBox(
                            height: 20,
                          )
                        : Container(),
                    Transform.rotate(
                      angle: -0.25,
                      child: Center(
                        child: Image.asset(
                          'images/lock.jpg',
                          height: Responsive.isDesktop(context)
                              ? (size.height / 2.6)
                              : 160,
                          //color: kDarkBlueColor,
                        ),
                      ),
                    ),
                    //textfield
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 2),
                        child: Container(
                          width: Responsive.isDesktop(context)
                              ? size.width / 2.8
                              : size.width,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(color: Colors.black54),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 18.0, top: 13),
                                child: Text(
                                  'Email Address',
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
                                          hintStyle: TextStyle(fontSize: 14),
                                          hintText: 'Enter Your Email Address',
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
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //button
                    Center(
                      child: Container(
                        width: Responsive.isDesktop(context)
                            ? size.width / 2.8
                            : size.width,
                        decoration: const BoxDecoration(
                          color: kDarkBlueColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 12.0),
                            child: Text(
                              'Send Email',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
