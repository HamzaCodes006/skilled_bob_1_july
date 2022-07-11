import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:skilled_bob_app_web/Customer/category.dart';
import 'package:skilled_bob_app_web/Customer/post_a_request_customer.dart';
import 'package:skilled_bob_app_web/Customer/request_page.dart';
import 'package:skilled_bob_app_web/Provider/job_requests.dart';
import 'package:skilled_bob_app_web/Provider/post_service_screen.dart';
import 'package:skilled_bob_app_web/Provider/provider_jobs_screen.dart';
import 'package:skilled_bob_app_web/Provider/provider_profile_screen.dart';
import 'package:skilled_bob_app_web/Provider/my_services_screen.dart';
import 'package:skilled_bob_app_web/authentication/register_screen.dart';
import 'Customer/dashboard.dart';
import 'Customer/index_page.dart';
import 'Customer/job_detail_page.dart';
import 'Customer/my_bookings.dart';
import 'Customer/my_favorites.dart';
import 'Customer/profile.dart';
import 'Provider/provider_dashboard.dart';
import 'authentication/login_screen.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RegisterScreen.id,
      routes: {
        IndexPage.id: (context) => const IndexPage(),
        RegisterScreen.id: (context) => const RegisterScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        MyServicesScreen.id: (context) => const MyServicesScreen(),
        ProviderProfileScreen.id: (context) => const ProviderProfileScreen(),
        PostServiceScreen.id: (context) => const PostServiceScreen(),
        ProviderJobsScreen.id: (context) => const ProviderJobsScreen(),
        Categories.id: (context) => const Categories(),
        Request.id: (context) => const Request(),
        JobRequests.id: (context) => const JobRequests(),
        MyFavorites.id: (context) => const MyFavorites(),
        Dashboard.id: (context) => const Dashboard(),
        PostARequestCustomer.id: (context) => const PostARequestCustomer(),
        ProviderDashboard.id: (context) => const ProviderDashboard(),
        JobDetail.id: (context) => const JobDetail(),
        MyBookings.id: (context) => const MyBookings(),
        Profile.id: (context) => const Profile(),
      },
    );
  }
}
