import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skilled_bob_app_web/responsive.dart';
import '../Customer/category.dart';
import '../Customer/dashboard.dart';
import '../Customer/index_page.dart';
import '../Customer/post_a_request_customer.dart';
import '../constant.dart';
import '../hover.dart';

class PostServiceScreen extends StatefulWidget {
  static const String id = 'PostServiceScreen';

  const PostServiceScreen({Key? key}) : super(key: key);

  @override
  _PostServiceScreenState createState() => _PostServiceScreenState();
}

class _PostServiceScreenState extends State<PostServiceScreen> {
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
    Size size = MediaQuery.of(context).size;
    return Responsive(
      desktop: Scaffold(
          backgroundColor: Colors.grey.shade100,
          extendBodyBehindAppBar: false,
          appBar: AppBar(
            elevation: 0,
            bottomOpacity: 6,
            shadowColor: Colors.grey,
            // shadowColor: Colors.transparent,
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
              const SizedBox(width: 10),
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
            padding: EdgeInsets.all(20),
            // physics: NeverScrollableScrollPhysics(),
            primary: false,
            scrollDirection: Axis.vertical,
            child: Center(
              child: Container(
                width: size.width * 0.5,
                decoration: const BoxDecoration(color: Colors.white),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 25.0),
                            child: Text(
                              'Describe the service you are offering:',
                              style: kBodyTextBlack,
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: size.height * 0.05,
                      // ),
                      //Title
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 25.0),
                        child: TextFormField(
                          maxLength: 10,
                          style: const TextStyle(
                              fontSize: 18,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black87),
                          decoration: InputDecoration(
                            // fillColor: Colors.blue[200]!.withOpacity(0.4),
                            // filled: true,
                            // hoverColor: kDarkBlue,
                            // helperText: 'Add Text',
                            hintStyle: const TextStyle(
                              fontSize: 17.0,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.money,
                              // color: Theme.of(context).primaryColor,
                            ),
                            labelText: 'Service Title',
                            labelStyle: const TextStyle(
                              fontSize: 17.0,
                              // color: Colors.blue,
                            ),
                            contentPadding: EdgeInsets.zero,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor),
                            ),
                            // focusColor: kOrange,
                          ),
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.left,
                        ),
                      ),
//description
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 25.0),
                        child: TextFormField(
                          maxLines: 7,
                          maxLength: 2500,
                          // controller: widget.controller,
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Service Description';
                            }
                            return null;
                          },
                          style: const TextStyle(
                              fontSize: 18,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black87),
                          decoration: InputDecoration(
                            // fillColor: Colors.grey[500].withOpacity(0.5),
                            // filled: true,
                            // hoverColor: kOrange,
                            // helperText: 'Add Text',
                            hintStyle:
                            TextStyle(fontSize: 18.0, color: Colors.grey),
                            prefixIcon: const Icon(
                              Icons.description_outlined,
                            ),
                            labelText: 'Description',
                            labelStyle: const TextStyle(
                              fontSize: 18.0,
                            ),
                            // contentPadding: EdgeInsets.zero,
                            enabledBorder: OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                              // gapPadding: 12.0,
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.blueAccent,
                              ),
                            ),
                            focusColor: Theme.of(context).primaryColor,
                          ),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.left,
                        ),
                      ),
//job category
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 25.0),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                              color: Colors.black87,
                              width: 1,
                            ),
                          ),
                          child: Container(
                            width: size.width,
                            height: size.height * 0.06,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
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
                                    color: Colors.grey,
                                    size: 22.0,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: DropdownButton<String>(
                                    // focusColor: Colors.red,
                                    menuMaxHeight: size.height,
                                    dropdownColor: Colors.white,
                                    itemHeight: 60.0,
                                    hint: const Text(
                                      'Select Job Category',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    // value: jobCategory,
                                    icon: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30.0),
                                      child: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        color: Colors.grey,
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
                                                  color: Colors.black87),
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
                      //Email
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 25.0),
                        child: TextFormField(
                          maxLength: 10,
                          style: const TextStyle(
                              fontSize: 18,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black87),
                          decoration: InputDecoration(
                            // fillColor: Colors.blue[200]!.withOpacity(0.4),
                            // filled: true,
                            // hoverColor: kDarkBlue,
                            // helperText: 'Add Text',
                            hintStyle: const TextStyle(
                              fontSize: 17.0,
                              color: Colors.grey,
                            ),
                            prefixIcon: const Icon(
                              Icons.email,
                              // color: Theme.of(context).primaryColor,
                            ),
                            labelText: 'Email',
                            labelStyle: const TextStyle(
                              fontSize: 17.0,
                              // color: Colors.blue,
                            ),
                            contentPadding: EdgeInsets.zero,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(),
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 2.0, horizontal: 25.0),
                        child: Container(
                          width: size.width * 0.14,
                          height: size.height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.grey[200]!.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                              color: Colors.black87,
                              width: 1,
                            ),
                          ),
                          child: GestureDetector(
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.upload_file),
                                ),
                                Text(
                                  'upload Image or Video.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      //Location
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 25.0),
                        child: TextFormField(

                          maxLines: 4,
                          style: const TextStyle(
                              fontSize: 18,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black87),
                          decoration: InputDecoration(
                            // fillColor: Colors.[200]!.withOpacity(0.4),
                            // filled: true,
                            // hoverColor: kDarkBlue,
                            // helperText: 'Add Text',
                            hintStyle: const TextStyle(
                              fontSize: 17.0,
                            ),
                            prefixIcon: Icon(
                              Icons.location_on,
                              // color: Theme.of(context).primaryColor,
                            ),
                            labelText: 'Location',
                            labelStyle: const TextStyle(
                              fontSize: 17.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide(),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
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
                              color: Colors.black87),
                          decoration: InputDecoration(
                            // fillColor: Colors.blue[200]!.withOpacity(0.4),
                            // filled: true,
                            // hoverColor: kDarkBlue,
                            // helperText: 'Add Text',
                            hintStyle: const TextStyle(
                              fontSize: 17.0,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.money,
                              // color: Theme.of(context).primaryColor,
                            ),
                            labelText: 'Job Budget',
                            labelStyle: const TextStyle(
                              fontSize: 17.0,
                              // color: Colors.blue,
                            ),
                            contentPadding: EdgeInsets.zero,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(),
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
                                'Post',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
      tablet: Container(child: Text('tablet')),
      mobile: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: Responsive.isDesktop(context)
              ? AppBar(
                  bottomOpacity: 0,
                  shadowColor: Colors.transparent,
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
                )
              : AppBar(
                  title: const Text(
                    'Post The Service',
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
                // key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
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
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                                // border: Border.all(color: kLightBlue, width: 1,),
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
                          //email
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 25.0),
                            child: TextFormField(
                              style: const TextStyle(
                                  fontSize: 18,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              decoration: InputDecoration(
                                fillColor: Colors.blue[200]!.withOpacity(0.4),
                                filled: true,
                                // hoverColor: kDarkBlue,
                                // helperText: 'Add Text',
                                hintStyle: const TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.grey,
                                ),
                                prefixIcon: Icon(
                                  Icons.account_circle,
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
                          //upload
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 25.0),
                            child: Container(
                              width: size.width,
                              height: size.height * 0.2,
                              decoration: BoxDecoration(
                                color: Colors.blue[200]!.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(10),
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
                          //title
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 25.0),
                            child: TextFormField(
                              style: const TextStyle(
                                  fontSize: 18,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white),
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
                                  Icons.work,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'Service Title',
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
                                //hoverColor: kDarkBlue,
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
                          //price
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
                                //hoverColor: kDarkBlue,
                                // helperText: 'Add Text',
                                hintStyle: const TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.grey,
                                ),
                                prefixIcon: Icon(
                                  Icons.money,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'Job Price',
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
                          //description
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
                                //hoverColor: kDarkBlue,
                                // helperText: 'Add Text',
                                hintStyle: const TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.grey,
                                ),
                                prefixIcon: Icon(
                                  Icons.description,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'Job Description',
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
                          //post button
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
                                    'Post',
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
      ),
    );
  }
}
