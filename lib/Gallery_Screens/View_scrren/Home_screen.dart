import 'package:flutter/material.dart';
import 'package:gallery_app/Gallery_Screens/Provider_scrren/Gallery_screen_provider.dart';
import 'package:provider/provider.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {

  Gallery_provider? providerF;
  Gallery_provider? providerT;

  @override
  Widget build(BuildContext context) {

    providerF=Provider.of<Gallery_provider>(context,listen: false);
    providerT=Provider.of<Gallery_provider>(context,listen: true);

    return SafeArea(
      child: Scaffold(
        body: providerT!.screenList[providerT!.selectScreen],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: providerT!.selectScreen,
          onTap: (value) {
            providerF!.channgeIndex(value);
          },
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.photo,color: Colors.white38,),label: "Photos"),
            BottomNavigationBarItem(icon: Icon(Icons.photo_album_sharp,color: Colors.white38,),label: "Albums"),
            BottomNavigationBarItem(icon: Icon(Icons.recommend,color: Colors.white38,),label: "Recommended"),
            BottomNavigationBarItem(icon: Icon(Icons.search_rounded,color: Colors.white38,),label: "Search"),
          ],
        ),
      ),
    );
  }
}
