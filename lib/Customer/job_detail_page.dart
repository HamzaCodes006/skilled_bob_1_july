import 'package:flutter/material.dart';
import 'package:skilled_bob_app_web/Customer/dashboard.dart';
import 'package:skilled_bob_app_web/Customer/profile.dart';
import 'package:skilled_bob_app_web/Customer/request_page.dart';
import 'package:skilled_bob_app_web/Provider/my_services_screen.dart';
import 'package:skilled_bob_app_web/Provider/provider_jobs_screen.dart';
import 'package:skilled_bob_app_web/constant.dart';
import 'package:skilled_bob_app_web/responsive.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import '../hover.dart';

class JobDetail extends StatefulWidget {
  static const String id = 'JobDetail';

  const JobDetail({Key? key}) : super(key: key);

  @override
  _JobDetailState createState() => _JobDetailState();
}

class _JobDetailState extends State<JobDetail> {
  bool favorite = false;
  List<Asset> images = <Asset>[];
  String _error = 'No Error Dectected';

  Future<void> loadAssets() async {
    List<Asset> resultList = <Asset>[];
    String error = 'No Error Detected';
    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: const CupertinoOptions(
          takePhotoIcon: "chat",
          doneButtonTitle: "Fatto",
        ),
        materialOptions: const MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      images = resultList;
      _error = error;
    });
  }

  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(images.length, (index) {
        Asset asset = images[index];
        return AssetThumb(
          asset: asset,
          width: 300,
          height: 300,
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenWidth = MediaQuery.of(context).size.width;
    return Responsive(
      desktop: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: false,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            loadAssets();
          },
          child: const Icon(Icons.chat),
        ),
        appBar: AppBar(
          elevation: 2,
          bottomOpacity: 6,
          shadowColor: Colors.grey,
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
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width * 0.06,
                  ),

                  //image
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: size.height * 0.5,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'images/car service.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 5,
                    ),
                    child: Container(
                      // width: size.width*0.3,
                      decoration: const BoxDecoration(
                        //color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              // width: MediaQuery.of(context).size.width / 1.17,
                              child: const Text(
                                'I will wash a car for you.',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height: 4,
                          // ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.location_on,
                                  size: 16,
                                ),
                                SizedBox(
                                  // width:
                                  // MediaQuery.of(context).size.width / 1.5,
                                  child: Text(
                                    'Attock, Punjab, Pakistan',
                                    style: TextStyle(
                                      // overflow: TextOverflow.fade,
                                      fontSize: 12,
                                    ),
                                    overflow: TextOverflow.clip,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            // mainAxisAlignment:
                            // MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  // alignment: Alignment.centerLeft,
                                  //width: MediaQuery.of(context).size.width / 1.17,
                                  child: const Icon(
                                    Icons.star,
                                    size: 18.0,
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                              const Text('4.2 (3)'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  // width: screenWidth / 1.7,
                                  // alignment: Alignment.centerRight,
                                  child: const Text(
                                    'Distance : ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                const Text(
                                  ' 30 km',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Description',
                              style: kBoldText,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: size.width * 0.3,
                              child: Text(
                                'Post and describe the task to be done totally for Free! Sit back and the pool of skilled Bob`s'
                                ' will respond with bids and offers.See the profile, skills, and ratings, from your preferred'
                                ' Bob. Make your personal decision which professional service provider you hire.'
                                'Now relax and let the SkilledBob do his job. Please rate him and get ready for your '
                                'next job post.',
                                style: kNormalText,
                                textAlign: TextAlign.justify,
                                maxLines: 7,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(
              //     horizontal: 30.0,
              //     vertical: 10,
              //   ),
              //   child: Text(
              //     'Description',
              //     style: kBoldText,
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(
              //     horizontal: 30.0,
              //     vertical: 0,
              //   ),
              //   child: Container(
              //     child: Text(
              //       'Kala Khela PO Pir Baba Tehsil Daggar District Kala Khela PO Pir Baba Tehsil Daggar District Kala Khela PO Pir Baba Tehsil Daggar District Kala Khela PO Pir Baba Tehsil Daggar District Kala Khela PO Pir Baba Tehsil Daggar District',
              //       style: kNormalText,
              //       textAlign: TextAlign.justify,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Center(
                child: Text(
                  '4 Reviews',
                  style: kBoldText.copyWith(fontSize: 25),
                  textAlign: TextAlign.justify,
                ),
              ),
              const Divider(endIndent: 700, indent: 700),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            width: size.width * 0.7,
                            //height: MediaQuery.of(context).size.height * 0.23,
                            padding: const EdgeInsets.symmetric(horizontal: 10),

                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white70.withOpacity(0.9),
                                    blurRadius: 1,
                                    offset: const Offset(0, 5))
                              ],
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.05)),
                            ),
                            child: Wrap(
                              runSpacing: 20,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10)),
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
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0,
                                            vertical: 8,
                                          ),
                                          child: SizedBox(
                                              height: 32,
                                              child: Chip(
                                                  label: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      const Icon(
                                                        Icons.star,
                                                        color: Colors.white,
                                                        size: 16,
                                                      ),
                                                      Text(
                                                        '(4.5)',
                                                        style:
                                                            kBodyText.copyWith(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                    ],
                                                  ),
                                                  backgroundColor: Colors
                                                      .lightBlue
                                                      .withOpacity(0.9),
                                                  shape:
                                                      const StadiumBorder())),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('Peter',
                                              overflow: TextOverflow.ellipsis,
                                              style: kBodyText),
                                          Text(
                                              'Hamza is such a great and experienced Man. He took all my suggestions and gave me an output that is beyond to my thinking, I am highly Impressed by his work and thoughts, He is a flutter Expert, ',
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.justify,
                                              softWrap: true,
                                              maxLines: 5,
                                              style: TextStyle(
                                                  color: Theme.of(context)
                                                      .hintColor)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            width: size.width * 0.7,
                            //height: MediaQuery.of(context).size.height * 0.23,
                            padding: const EdgeInsets.symmetric(horizontal: 10),

                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white70.withOpacity(0.9),
                                    blurRadius: 1,
                                    offset: const Offset(0, 5))
                              ],
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.05)),
                            ),
                            child: Wrap(
                              runSpacing: 20,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10)),
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
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0,
                                            vertical: 8,
                                          ),
                                          child: SizedBox(
                                              height: 32,
                                              child: Chip(
                                                  label: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      const Icon(
                                                        Icons.star,
                                                        color: Colors.white,
                                                        size: 16,
                                                      ),
                                                      Text(
                                                        '(4.5)',
                                                        style:
                                                            kBodyText.copyWith(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                    ],
                                                  ),
                                                  backgroundColor: Colors
                                                      .lightBlue
                                                      .withOpacity(0.9),
                                                  shape:
                                                      const StadiumBorder())),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('Peter',
                                              overflow: TextOverflow.ellipsis,
                                              style: kBodyText),
                                          Text(
                                              'Hamza is such a great and experienced Man. He took all my suggestions and gave me an output that is beyond to my thinking, I am highly Impressed by his work and thoughts, He is a flutter Expert, ',
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.justify,
                                              softWrap: true,
                                              maxLines: 5,
                                              style: TextStyle(
                                                  color: Theme.of(context)
                                                      .hintColor)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            width: size.width * 0.7,
                            //height: MediaQuery.of(context).size.height * 0.23,
                            padding: const EdgeInsets.symmetric(horizontal: 10),

                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white70.withOpacity(0.9),
                                    blurRadius: 1,
                                    offset: const Offset(0, 5))
                              ],
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.05)),
                            ),
                            child: Wrap(
                              runSpacing: 20,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10)),
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
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0,
                                            vertical: 8,
                                          ),
                                          child: SizedBox(
                                              height: 32,
                                              child: Chip(
                                                  label: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      const Icon(
                                                        Icons.star,
                                                        color: Colors.white,
                                                        size: 16,
                                                      ),
                                                      Text(
                                                        '(4.5)',
                                                        style:
                                                            kBodyText.copyWith(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                    ],
                                                  ),
                                                  backgroundColor: Colors
                                                      .lightBlue
                                                      .withOpacity(0.9),
                                                  shape:
                                                      const StadiumBorder())),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('Peter',
                                              overflow: TextOverflow.ellipsis,
                                              style: kBodyText),
                                          Text(
                                              'Hamza is such a great and experienced Man. He took all my suggestions and gave me an output that is beyond to my thinking, I am highly Impressed by his work and thoughts, He is a flutter Expert, ',
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.justify,
                                              softWrap: true,
                                              maxLines: 5,
                                              style: TextStyle(
                                                  color: Theme.of(context)
                                                      .hintColor)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            width: size.width * 0.7,
                            //height: MediaQuery.of(context).size.height * 0.23,
                            padding: const EdgeInsets.symmetric(horizontal: 10),

                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white70.withOpacity(0.9),
                                    blurRadius: 1,
                                    offset: const Offset(0, 5))
                              ],
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.05)),
                            ),
                            child: Wrap(
                              runSpacing: 20,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10)),
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
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0,
                                            vertical: 8,
                                          ),
                                          child: SizedBox(
                                              height: 32,
                                              child: Chip(
                                                  label: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      const Icon(
                                                        Icons.star,
                                                        color: Colors.white,
                                                        size: 16,
                                                      ),
                                                      Text(
                                                        '(4.5)',
                                                        style:
                                                            kBodyText.copyWith(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                    ],
                                                  ),
                                                  backgroundColor: Colors
                                                      .lightBlue
                                                      .withOpacity(0.9),
                                                  shape:
                                                      const StadiumBorder())),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('Peter',
                                              overflow: TextOverflow.ellipsis,
                                              style: kBodyText),
                                          Text(
                                              'Hamza is such a great and experienced Man. He took all my suggestions and gave me an output that is beyond to my thinking, I am highly Impressed by his work and thoughts, He is a flutter Expert, ',
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.justify,
                                              softWrap: true,
                                              maxLines: 5,
                                              style: TextStyle(
                                                  color: Theme.of(context)
                                                      .hintColor)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                    ],
                  ),
                ],
              ),
              // const Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 80.0),
              //   child: Divider(
              //     indent: 100,
              //     color: Colors.grey,
              //     thickness: 1,
              //     endIndent: 100,
              //   ),
              // ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  const Text(
                    'About The Provider',
                    style: kHeadTextBlack,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Dashboard.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10.0),
                      child: Container(
                        width: size.width * 0.3,
                        decoration: const BoxDecoration(
                          color: Color(0xffE0F3FF),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: ClipRRect(
                                      child: Image.asset(
                                        'images/profile picture.jfif',
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                    ),
                                    backgroundColor: Colors.black87,
                                    radius: 25,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Usama Ali',
                                        style: kBoldText.copyWith(fontSize: 16),
                                      ),
                                      const Text('Flutter Developer'),
                                    ],
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: size.width * 0.03),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 10,
                    ),
                    child: Container(
                      child: Text(
                        'Recommended For You',
                        style: kBoldText,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),

                child: Row(
                  children: List.generate(15, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 8.0,
                        bottom: 8.0,
                        left: 30.0,
                        right: 15.0,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MyServicesScreen()));
                        },
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset:
                                    Offset(4, 3), // changes position of shadow
                              ),
                            ],
                            //color: Colors.white70.withOpacity(0.7),
                            color: const Color(0xffE0F3FF),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 210,
                                height: 130,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    //topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'images/car service.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 6.0,
                                  horizontal: 15.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(0),
                                      child: Text(
                                        'Service',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                          //fontFamily: 'Dongle',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Car & Bike Services',
                                      style: TextStyle(
                                        fontSize: 14,
                                        //color: Colors.white,
                                        //fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                // child: Row(
                //   children: [
                //     //car and bike services container
                //     Padding(
                //       padding: const EdgeInsets.only(
                //         top: 8.0,
                //         bottom: 8.0,
                //         left: 30.0,
                //         right: 15.0,
                //       ),
                //       child: InkWell(
                //         onTap: () {
                //           Navigator.pushReplacement(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (context) =>
                //                       const MyServicesScreen()));
                //         },
                //         child: Container(
                //           width: 200,
                //           height: 200,
                //           decoration: BoxDecoration(
                //             boxShadow: [
                //               BoxShadow(
                //                 color: Colors.grey.withOpacity(0.5),
                //                 spreadRadius: 2,
                //                 blurRadius: 2,
                //                 offset:
                //                     Offset(4, 3), // changes position of shadow
                //               ),
                //             ],
                //             //color: Colors.white70.withOpacity(0.7),
                //             color: const Color(0xffE0F3FF),
                //             borderRadius: const BorderRadius.only(
                //               bottomLeft: Radius.circular(20),
                //               topRight: Radius.circular(20),
                //             ),
                //           ),
                //           child: Column(
                //             //mainAxisAlignment: MainAxisAlignment.start,
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Container(
                //                 width: 210,
                //                 height: 100,
                //                 child: ClipRRect(
                //                   borderRadius: const BorderRadius.only(
                //                     //topLeft: Radius.circular(10),
                //                     topRight: Radius.circular(10),
                //                   ),
                //                   child: Image.asset(
                //                     'images/car service.jpg',
                //                     fit: BoxFit.fill,
                //                   ),
                //                 ),
                //               ),
                //               Padding(
                //                 padding: const EdgeInsets.symmetric(
                //                   vertical: 6.0,
                //                   horizontal: 15.0,
                //                 ),
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: const [
                //                     Padding(
                //                       padding: EdgeInsets.all(0),
                //                       child: Text(
                //                         'Service',
                //                         style: TextStyle(
                //                           fontSize: 18,
                //                           fontWeight: FontWeight.bold,
                //                           color: Colors.black87,
                //                           //fontFamily: 'Dongle',
                //                         ),
                //                       ),
                //                     ),
                //                     Text(
                //                       'Car & Bike Services',
                //                       style: TextStyle(
                //                         fontSize: 14,
                //                         //color: Colors.white,
                //                         //fontWeight: FontWeight.bold,
                //                         color: Colors.black87,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //     //painting services container
                //     Padding(
                //       padding: const EdgeInsets.symmetric(
                //         vertical: 8.0,
                //         horizontal: 0.0,
                //       ),
                //       child: InkWell(
                //         onTap: () {
                //           Navigator.pushReplacement(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (context) =>
                //                       const MyServicesScreen()));
                //         },
                //         child: Container(
                //           width: 170,
                //           height: 150,
                //           decoration: BoxDecoration(
                //             boxShadow: [
                //               BoxShadow(
                //                 color: Colors.grey.withOpacity(0.5),
                //                 spreadRadius: 2,
                //                 blurRadius: 2,
                //                 offset:
                //                     Offset(4, 3), // changes position of shadow
                //               ),
                //             ],
                //             //color: Colors.white70.withOpacity(0.7),
                //             color: const Color(0xffE0F3FF),
                //             borderRadius: const BorderRadius.only(
                //               bottomLeft: Radius.circular(20),
                //               topRight: Radius.circular(20),
                //             ),
                //           ),
                //           child: Column(
                //             //mainAxisAlignment: MainAxisAlignment.start,
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Container(
                //                 width: 210,
                //                 height: 100,
                //                 child: ClipRRect(
                //                   borderRadius: const BorderRadius.only(
                //                     //topLeft: Radius.circular(10),
                //                     topRight: Radius.circular(10),
                //                   ),
                //                   child: Image.asset(
                //                     'images/painting.jpg',
                //                     fit: BoxFit.fill,
                //                   ),
                //                 ),
                //               ),
                //               Padding(
                //                 padding: const EdgeInsets.symmetric(
                //                   vertical: 6.0,
                //                   horizontal: 15.0,
                //                 ),
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: const [
                //                     Text(
                //                       'Painting',
                //                       style: TextStyle(
                //                         fontSize: 18,
                //                         fontWeight: FontWeight.w500,
                //                         //color: Colors.white,
                //                         color: Colors.black87,
                //                       ),
                //                     ),
                //                     Text(
                //                       'Wall Painting Services',
                //                       style: TextStyle(
                //                         fontSize: 14, color: Colors.black87,
                //                         //fontWeight: FontWeight.bold,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //     //web design services container
                //     Padding(
                //       padding: const EdgeInsets.symmetric(
                //         vertical: 8.0,
                //         horizontal: 15.0,
                //       ),
                //       child: InkWell(
                //         onTap: () {
                //           Navigator.pushReplacement(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (context) =>
                //                       const MyServicesScreen()));
                //         },
                //         child: Container(
                //           width: 170,
                //           height: 150,
                //           decoration: BoxDecoration(
                //             boxShadow: [
                //               BoxShadow(
                //                 color: Colors.grey.withOpacity(0.5),
                //                 spreadRadius: 2,
                //                 blurRadius: 2,
                //                 offset:
                //                     Offset(4, 3), // changes position of shadow
                //               ),
                //             ],
                //             color: const Color(0xffE0F3FF),
                //             //color: Colors.white70.withOpacity(0.7),
                //             borderRadius: const BorderRadius.only(
                //               bottomLeft: Radius.circular(20),
                //               topRight: Radius.circular(20),
                //             ),
                //           ),
                //           child: Column(
                //             //mainAxisAlignment: MainAxisAlignment.start,
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Container(
                //                 width: 210,
                //                 height: 100,
                //                 child: ClipRRect(
                //                   borderRadius: const BorderRadius.only(
                //                     topLeft: Radius.circular(10),
                //                     topRight: Radius.circular(10),
                //                   ),
                //                   child: Image.asset(
                //                     'images/web design.jfif',
                //                     fit: BoxFit.fill,
                //                   ),
                //                 ),
                //               ),
                //               Padding(
                //                 padding: const EdgeInsets.symmetric(
                //                   vertical: 6.0,
                //                   horizontal: 15.0,
                //                 ),
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: const [
                //                     Text(
                //                       'Web Designing',
                //                       style: TextStyle(
                //                         fontSize: 18,
                //                         fontWeight: FontWeight.w500,
                //                         //color: Colors.white,
                //                         color: Colors.black87,
                //                       ),
                //                     ),
                //                     Text(
                //                       'Web Design Services',
                //                       style: TextStyle(
                //                         fontSize: 14,
                //                         color: Colors.black87,
                //                         //fontWeight: FontWeight.bold,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Expanded(
                child: buildGridView(),
              ),
            ],
          ),
        ),
      ),
      tablet: const Scaffold(
        body: Text('Tablet'),
      ),
      mobile: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.chat),
          ),
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              color: Colors.blueAccent,
              icon: const Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.white,
                size: 26,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Center(
              child: Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 15.0),
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
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 26,
                          )
                        : const Icon(
                            Icons.favorite,
                            color: Colors.blue,
                            size: 26,
                          )),
              ),
            ],
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 270,
                  width: 400,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      )),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                    ),
                    child: Image.asset(
                      'images/car service.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 5,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      //color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 1.17,
                                child: const Text(
                                  'Kala Khela PO Pir Baba Tehsil in Daggar District',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23,
                                  ),
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   height: 4,
                            // ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7.0),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    size: 16,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: const Text(
                                      'Attock, Punjab, Pakistan',
                                      style: TextStyle(
                                        // overflow: TextOverflow.fade,
                                        fontSize: 12,
                                      ),
                                      overflow: TextOverflow.clip,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        //width: MediaQuery.of(context).size.width / 1.17,
                                        child: const Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ),
                                    Text('(4.0)'),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    width: screenWidth / 1.7,
                                    alignment: Alignment.centerRight,
                                    child: const Text(
                                      'Distance : ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ),
                                Text(
                                  '30 km',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 10,
                  ),
                  child: Text(
                    'Description',
                    style: kBoldText,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 0,
                  ),
                  child: Container(
                    child: Text(
                      'Kala Khela PO Pir Baba Tehsil Daggar District Kala Khela PO Pir Baba Tehsil Daggar District Kala Khela PO Pir Baba Tehsil Daggar District Kala Khela PO Pir Baba Tehsil Daggar District Kala Khela PO Pir Baba Tehsil Daggar District',
                      style: kNormalText,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30.0,
                    right: 30,
                    top: 10,
                    bottom: 5,
                  ),
                  child: Container(
                    child: Text(
                      'Review',
                      style: kBoldText,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    //height: MediaQuery.of(context).size.height * 0.23,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white70.withOpacity(0.9),
                            blurRadius: 1,
                            offset: const Offset(0, 5))
                      ],
                      border: Border.all(color: Colors.grey.withOpacity(0.05)),
                    ),
                    child: Wrap(
                      runSpacing: 20,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
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
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                    vertical: 8,
                                  ),
                                  child: SizedBox(
                                      height: 32,
                                      child: Chip(
                                          padding: const EdgeInsets.all(0),
                                          label: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              const Icon(
                                                Icons.star,
                                                color: Colors.white,
                                                size: 16,
                                              ),
                                              Text(
                                                '(4.5)',
                                                style: kBodyText.copyWith(
                                                    fontSize: 14,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                          backgroundColor:
                                              Colors.lightBlue.withOpacity(0.9),
                                          shape: const StadiumBorder())),
                                ),
                              ],
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.02),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Peter',
                                      overflow: TextOverflow.ellipsis,
                                      style: kBodyText),
                                  Text(
                                      'Hamza is such a great and experienced Man. He took all my suggestions and gave me an output that is beyond to my thinking, I am highly Impressed by his work and thoughts, He is a flutter Expert, ',
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.justify,
                                      softWrap: true,
                                      maxLines: 5,
                                      style: TextStyle(
                                          color: Theme.of(context).hintColor)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    //height: MediaQuery.of(context).size.height * 0.23,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white70.withOpacity(0.9),
                            blurRadius: 1,
                            offset: const Offset(0, 5))
                      ],
                      border: Border.all(color: Colors.grey.withOpacity(0.05)),
                    ),
                    child: Wrap(
                      runSpacing: 20,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
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
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                    vertical: 8,
                                  ),
                                  child: SizedBox(
                                      height: 32,
                                      child: Chip(
                                          padding: const EdgeInsets.all(0),
                                          label: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              const Icon(
                                                Icons.star,
                                                color: Colors.white,
                                                size: 16,
                                              ),
                                              Text(
                                                '(4.5)',
                                                style: kBodyText.copyWith(
                                                    fontSize: 14,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                          backgroundColor:
                                              Colors.lightBlue.withOpacity(0.9),
                                          shape: const StadiumBorder())),
                                ),
                              ],
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.02),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Peter',
                                      overflow: TextOverflow.ellipsis,
                                      style: kBodyText),
                                  Text(
                                      'Hamza is such a great and experienced Man. He took all my suggestions and gave me an output that is beyond to my thinking, I am highly Impressed by his work and thoughts, He is a flutter Expert, ',
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.justify,
                                      softWrap: true,
                                      maxLines: 5,
                                      style: TextStyle(
                                          color: Theme.of(context).hintColor)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80.0),
                  child: Divider(
                    color: Colors.black45,
                    thickness: 1.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffE0F3FF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                child: ClipRRect(
                                  child: Image.asset(
                                    'images/profile picture.jfif',
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                backgroundColor: Colors.black87,
                                radius: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Usama Ali',
                                    style: kBoldText.copyWith(fontSize: 16),
                                  ),
                                  const Text('Flutter Developer'),
                                ],
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 10,
                  ),
                  child: Container(
                    child: Text(
                      'Recommended For You',
                      style: kBoldText,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //car and bike services container
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 8.0,
                          left: 30.0,
                          right: 15.0,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const MyServicesScreen()));
                          },
                          child: Container(
                            width: 170,
                            height: 150,
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
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 210,
                                  height: 100,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      //topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Image.asset(
                                      'images/car service.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 6.0,
                                    horizontal: 15.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.all(0),
                                        child: Text(
                                          'Service',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                            //fontFamily: 'Dongle',
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Car & Bike Services',
                                        style: TextStyle(
                                          fontSize: 14,
                                          //color: Colors.white,
                                          //fontWeight: FontWeight.bold,
                                          color: Colors.black87,
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
                      //painting services container
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 0.0,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const MyServicesScreen()));
                          },
                          child: Container(
                            width: 170,
                            height: 150,
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
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 210,
                                  height: 100,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      //topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Image.asset(
                                      'images/painting.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 6.0,
                                    horizontal: 15.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Painting',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          //color: Colors.white,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      Text(
                                        'Wall Painting Services',
                                        style: TextStyle(
                                          fontSize: 14, color: Colors.black87,
                                          //fontWeight: FontWeight.bold,
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
                      //web design services container
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 15.0,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const MyServicesScreen()));
                          },
                          child: Container(
                            width: 170,
                            height: 150,
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
                              color: const Color(0xffE0F3FF),
                              //color: Colors.white70.withOpacity(0.7),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 210,
                                  height: 100,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Image.asset(
                                      'images/web design.jfif',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 6.0,
                                    horizontal: 15.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Web Designing',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          //color: Colors.white,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      Text(
                                        'Web Design Services',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black87,
                                          //fontWeight: FontWeight.bold,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 80.0,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white60.withOpacity(0.9),
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20.0),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          '\$15',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                        Text(
                          '/per hour',
                          style: kNormalText,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Request()));
                        },
                        child: const Text('Continue To Request'),
                        color: Colors.blue,
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
