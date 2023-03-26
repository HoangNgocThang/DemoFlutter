import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_app/provider/config_server_provider.dart';
import 'package:my_app/provider/data_provider.dart';
import 'package:my_app/screens/home-screen.dart';
import 'package:my_app/screens/login-screen.dart';
import 'package:my_app/screens/nhuahvt_cart_screen.dart';
import 'package:my_app/screens/nhuahvt_home_screen.dart';
import 'package:my_app/screens/nhuahvt_profile_screen.dart';
import 'package:my_app/screens/test-form-screen.dart';
import 'package:my_app/screens/test-provider-screen.dart';
import 'package:my_app/screens/test-redux-screen.dart';
import 'package:my_app/screens/test-screen.dart';
import 'package:my_app/screens/test_call_api_screen.dart';
import 'package:my_app/screens/test_provider_v2_screen.dart';
import 'package:my_app/screens/test_serializing_json_screen.dart';
import 'package:my_app/widgets/custom_nav_bar.dart';
import 'package:redux/redux.dart';
import 'package:provider/provider.dart';
import 'provider/movie_provider.dart';
// import 'package:device_preview/device_preview.dart';

// The reducer, which takes the previous count and increments it in response
// to an Increment action.
int counterReducer(int state, dynamic action) {
  if (action == 'Increment') {
    return state + 1;
  }
  if (action == 'Decrease') {
    return state - 1;
  }
  return state;
}

final store = Store<int>(counterReducer, initialState: 0);

// void main() => runApp(MyApp());

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (ctx) => MovieProvider(),
      ),
      ChangeNotifierProvider(
        create: (ctx) => ConfigServerProvider(),
      ),
      ChangeNotifierProvider(create: (ctx) => DataProvider())
    ],
    child: const MyApp(),
  ));
}

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    NhuahvtHomeScreen(),
    NhuahvtCartScreen(),
    NhuahvtProfileScreen()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currnetScreen = NhuahvtHomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 80,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                // topLeft: Radius.circular(20),
                // topRight: Radius.circular(20),
                ),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    currnetScreen = NhuahvtHomeScreen();
                    currentTab = 0;
                  });
                },
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        size: 20,
                        Icons.home,
                        color: const Color(0xffD2D2D2),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Trang chủ',
                        style:
                            TextStyle(color: Color(0xff999999), fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    currnetScreen = NhuahvtCartScreen();
                    currentTab = 1;
                  });
                },
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        size: 20,
                        Icons.home,
                        color: const Color(0xffD2D2D2),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Giỏ hàng',
                        style:
                            TextStyle(color: Color(0xff999999), fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    currnetScreen = NhuahvtProfileScreen();
                    currentTab = 2;
                  });
                },
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        size: 20,
                        Icons.home,
                        color: const Color(0xffD2D2D2),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Cá nhân',
                        style:
                            TextStyle(color: Color(0xff999999), fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
            ),

            // buildBottomBarItem(
            //     'Trang chủ', Icons.home, _selectedIndex == 0 ? true : false, 0),
            // buildBottomBarItem("Đặt hàng", Icons.card_travel,
            //     _selectedIndex == 1 ? true : false, 1),
            // buildBottomBarItem(
            //     "Tích điểm", Icons.home, _selectedIndex == 2 ? true : false, 2),
            // buildBottomBarItem("Thông báo", Icons.notification_add,
            //     _selectedIndex == 3 ? true : false, 3),
            // buildBottomBarItem("Tài khoản", Icons.perm_identity,
            //     _selectedIndex == 4 ? true : false, 4),
          ]),
        ),
        body: PageStorage(
          bucket: bucket,
          child: screens[currentTab],
        ));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: RootScreen(),
          routes: {
            '': (context) => RootScreen(),
            '/login': (context) => LoginScreen(),
            '/home': (context) => HomeScreen(),
            '/test': (context) => TestScreen(),
            '/test-provider': (context) => TestProviderScreen(),
            '/test-redux': (context) => TestReduxScreen(),
            '/test-call-api': (context) => TestCallApiScreen(),
            '/test-json': (context) => TestSerialozationJsonScreen(),
            '/test-form': (context) => TestFormScreen(),
            '/nhuahvt-home': (context) => NhuahvtHomeScreen(),
            '/nhuahvt-cart': (context) => NhuahvtCartScreen(),
            '/nhuahvt-profile': (context) => NhuahvtProfileScreen(),
            '/test_provider_v2': (context) => TestProviderV2Screen()
          },
          // initialRoute: '/test-redux',
          // initialRoute: '/test-json',
          // initialRoute: '/test_provider_v2',
          // initialRoute: '/test-call-api',
          // initialRoute: '/test-form',
          //  initialRoute: '/test-provider',
          initialRoute: '',
          debugShowCheckedModeBanner: false,
          //  darkTheme: ThemeData.dark(),
          // useInheritedMediaQuery: true,
          // locale: DevicePreview.locale(context),
          // builder: DevicePreview.appBuilder,
        ));
  }
}
