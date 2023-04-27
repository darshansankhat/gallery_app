import 'package:flutter/material.dart';
import 'package:gallery_app/Gallery_Screens/Provider_scrren/Gallery_screen_provider.dart';
import 'package:provider/provider.dart';

class Photos_screen extends StatefulWidget {
  const Photos_screen({Key? key}) : super(key: key);

  @override
  State<Photos_screen> createState() => _Photos_screenState();
}

class _Photos_screenState extends State<Photos_screen> {

  Gallery_provider? providerF;
  Gallery_provider? providerT;

  @override
  Widget build(BuildContext context) {

    providerF=Provider.of<Gallery_provider>(context,listen: false);
    providerT=Provider.of<Gallery_provider>(context,listen: true);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Photos",
          style: TextStyle(fontSize: 25, color: Colors.white, letterSpacing: 1),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.check_box_outlined,
                size: 25,
                color: Colors.white,
              )),
          SizedBox(width: 10),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 25,
                color: Colors.white,
              )),
          SizedBox(width: 20),
        ],
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Text
                Text(
                  "Yesterday",
                  style: TextStyle(fontSize: 18, color: Colors.white38),
                ),
                //image
                SizedBox(height: 20),
                Container(
                  height: 300,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 100,
                      crossAxisCount: 4,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(onTap: () {
                        Navigator.pushNamed(context, "view",arguments: index);
                      },child: galleryImage(index));
                    },
                    itemCount: providerF!.ImageList.length,
                  ),
                ),

                //Text
                SizedBox(height: 20),
                Text(
                  "April 25",
                  style: TextStyle(fontSize: 18, color: Colors.white38),
                ),
                //image
                SizedBox(height: 20),
                Container(
                  height: 300,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 100,
                      crossAxisCount: 4,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(onTap: () {
                        Navigator.pushNamed(context, "view",arguments: index);
                      },child: galleryImage(index));
                    },
                    itemCount: providerF!.ImageList.length,
                  ),
                ),
                //Text
                SizedBox(height: 20),
                Text(
                  "April 23",
                  style: TextStyle(fontSize: 18, color: Colors.white38),
                ),
                //image
                SizedBox(height: 20),
                Container(
                  height: 300,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 100,
                      crossAxisCount: 4,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(onTap: () {
                        Navigator.pushNamed(context, "view",arguments: index);
                      },child: galleryImage(index));
                    },
                    itemCount: providerF!.ImageList.length,
                  ),
                ),
                //Text
                SizedBox(height: 20),
                Text(
                  "April 21",
                  style: TextStyle(fontSize: 18, color: Colors.white38),
                ),
                //image
                SizedBox(height: 20),
                Container(
                  height: 300,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 100,
                      crossAxisCount: 4,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(onTap: () {
                        Navigator.pushNamed(context, "view",arguments: index);
                      },child: galleryImage(index));
                    },
                    itemCount: providerF!.ImageList.length,
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }

  Widget galleryImage(int index) {
    return Container(
      height: 50,
      width: 50,
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Image.asset("${providerF!.ImageList[index].img}",fit: BoxFit.fill,),
    );
  }
}
