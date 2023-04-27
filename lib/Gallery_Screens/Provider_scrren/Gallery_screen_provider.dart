import 'package:flutter/cupertino.dart';
import 'package:gallery_app/Gallery_Screens/Model_class/Gallery_model.dart';
import 'package:gallery_app/Gallery_Screens/View_scrren/Albums_screen.dart';
import 'package:gallery_app/Gallery_Screens/View_scrren/Photos_screen.dart';
import 'package:gallery_app/Gallery_Screens/View_scrren/Recommended_screen.dart';
import 'package:gallery_app/Gallery_Screens/View_scrren/Search_screen.dart';

class Gallery_provider extends ChangeNotifier
{
  int selectScreen=0;

  void channgeIndex(int index)
  {
    selectScreen=index;

    notifyListeners();
  }

  List screenList=[
    Photos_screen(),
    Albums_screen(),
    Recommanded_screen(),
    Search_screen(),
  ];

  List<Gallery_model> ImageList=[
    Gallery_model(img: "assets/image/Photos_image/1.png"),
    Gallery_model(img: "assets/image/Photos_image/2.png"),
    Gallery_model(img: "assets/image/Photos_image/3.png"),
    Gallery_model(img: "assets/image/Photos_image/4.png"),
    Gallery_model(img: "assets/image/Photos_image/5.png"),
    Gallery_model(img: "assets/image/Photos_image/6.png"),
    Gallery_model(img: "assets/image/Photos_image/7.png"),
    Gallery_model(img: "assets/image/Photos_image/8.png"),
    Gallery_model(img: "assets/image/Photos_image/9.png"),
    Gallery_model(img: "assets/image/Photos_image/10.png"),
    Gallery_model(img: "assets/image/Photos_image/11.png"),
  ];
}