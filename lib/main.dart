import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_app/provider/config_server_provider.dart';
import 'package:my_app/provider/data_provider.dart';
import 'package:my_app/screens/home-screen.dart';
import 'package:my_app/screens/login-screen.dart';
import 'package:my_app/screens/nhuahvt_home_screen.dart';
import 'package:my_app/screens/test-form-screen.dart';
import 'package:my_app/screens/test-provider-screen.dart';
import 'package:my_app/screens/test-redux-screen.dart';
import 'package:my_app/screens/test-screen.dart';
import 'package:my_app/screens/test_call_api_screen.dart';
import 'package:my_app/screens/test_provider_v2_screen.dart';
import 'package:my_app/screens/test_serializing_json_screen.dart';
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            '/login': (context) => LoginScreen(),
            '/home': (context) => HomeScreen(),
            '/test': (context) => TestScreen(),
            '/test-provider': (context) => TestProviderScreen(),
            '/test-redux': (context) => TestReduxScreen(),
            '/test-call-api': (context) => TestCallApiScreen(),
            '/test-json': (context) => TestSerialozationJsonScreen(),
            '/test-form': (context) => TestFormScreen(),
            '/nhuahvt-home': (context) => NhuahvtHomeScreen(),
            '/tes_provider_v2': (context) => TestProviderV2Screen()
          },
          // initialRoute: '/test-redux',
          initialRoute: '/test-json',
          // initialRoute: '/test-provider',
          // initialRoute: '/test-call-api',
          // initialRoute: '/test-form',
          debugShowCheckedModeBanner: false,
          //  darkTheme: ThemeData.dark(),
          // useInheritedMediaQuery: true,
          // locale: DevicePreview.locale(context),
          // builder: DevicePreview.appBuilder,
        ));
  }
}
