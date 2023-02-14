import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:my_app/sceens/home-screen.dart';
import 'package:my_app/sceens/login-screen.dart';
import 'package:my_app/sceens/test-provider-screen.dart';
import 'package:my_app/sceens/test-redux-screen.dart';
import 'package:my_app/sceens/test-screen.dart';
import 'package:redux/redux.dart';
// import 'package:device_preview/device_preview.dart';

// The reducer, which takes the previous count and increments it in response
// to an Increment action.
int counterReducer(int state, dynamic action) {
  if (action == 'Increment') {
    return state + 1;
  }
  if(action == 'Decrease') {
     return state -1;
  }
  return state;
}

void main() {
  final store = Store<int>(counterReducer, initialState: 0);
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  final Store<int> store;

  const MyApp({super.key, required this.store});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
    StoreProvider(
      store: store,
      child: 
      MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/login': (context) => LoginScreen(),
          '/home': (context) => HomeScreen(),
          '/test': (context) => TestScreen(),
          '/test-provider': (context) => TestProviderScreen(),
          '/test-redux': (context) => TestReduxScreen()
        },
        initialRoute: '/test-redux',
        debugShowCheckedModeBanner: false,
        //  darkTheme: ThemeData.dark(),
        // useInheritedMediaQuery: true,
        // locale: DevicePreview.locale(context),
        // builder: DevicePreview.appBuilder,
      )
    );
  }
}
