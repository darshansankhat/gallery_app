import 'package:flutter/material.dart';
import 'package:gallery_app/Gallery_Screens/Provider_scrren/Gallery_screen_provider.dart';
import 'package:gallery_app/Gallery_Screens/View_scrren/Home_screen.dart';
import 'package:gallery_app/Gallery_Screens/View_scrren/View_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Gallery_provider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/":(context) => Home_screen(),
          "view":(context) => View_screen(),
        },
      ),
    ),
  );
}