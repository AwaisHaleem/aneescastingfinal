import 'package:anees_costing/Models/category.dart';
import 'package:anees_costing/Models/product.dart';
import 'package:anees_costing/Models/user.dart';
import 'package:anees_costing/Screen/Admin/addproduct.dart';
import 'package:anees_costing/Screen/Admin/addseller.dart';
import 'package:anees_costing/Screen/Admin/category.dart';
import 'package:anees_costing/Screen/Admin/homepage.dart';
import 'package:anees_costing/Screen/Admin/product.dart';
import 'package:anees_costing/Screen/Admin/users.dart';
import 'package:anees_costing/Screen/Auth/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'Screen/Common/profile.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key) ;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Categories(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        ),
         ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Anees Casting',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.ubuntuTextTheme(),
        ),
        routes: {
          '/': (ctx) => LoginScreen(),
          AdminHomePage.routeName:(ctx)=>AdminHomePage(),
          CategoryScreen.routeName:(ctx) => CategoryScreen(),
          UserScreen.routeName:(ctx)=>UserScreen(),
          ProductScreen.routeName:(ctx)=>ProductScreen(),
          AddProduct.routeName:(ctx)=>AddProduct(),
          AddUser.routeName:(ctx)=>AddUser(),

        },
      ),
    );
  }
}
