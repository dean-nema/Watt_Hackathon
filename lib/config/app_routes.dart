
// import 'package:stuff_neh/pages/Login_page.dart';
// import 'package:stuff_neh/pages/edit_profile_page.dart';
// import 'package:stuff_neh/pages/home_page.dart';
// import 'package:stuff_neh/pages/main_page.dart';
// import 'package:stuff_neh/pages/nearby_page.dart';
import 'package:watt/pages/log_in.dart';


class AppRoutes {
  static final pages = {//lol this is a map
    login: (context) => const LoginPage(),
    // home: (context) => TestPage(),
    // main: (context) => MainPage(),
    // editPofile: (context) => EditProfilePage(),
    // nearby: (context) => NearbyPage(),
  };
  static const login = '/';
   static const home = '/home';
  // static const main = '/main';
  // static const editPofile = '/edit_profile';
  // static const nearby = '/nearby_page';


}
