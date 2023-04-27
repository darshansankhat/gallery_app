import 'package:flutter/material.dart';
import 'package:gallery_app/Gallery_Screens/Provider_scrren/Gallery_screen_provider.dart';
import 'package:provider/provider.dart';

class View_screen extends StatefulWidget {
  const View_screen({Key? key}) : super(key: key);

  @override
  State<View_screen> createState() => _View_screenState();
}

class _View_screenState extends State<View_screen> {

  Gallery_provider? providerF;
  Gallery_provider? providerT;

  @override
  Widget build(BuildContext context) {

    providerF=Provider.of<Gallery_provider>(context,listen: false);
    providerT=Provider.of<Gallery_provider>(context,listen: true);

    int index=ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("1 / 345"),
          actions: [
            Icon(Icons.favorite,size: 25,color: Colors.white38,),
            SizedBox(width: 20,),
            Icon(Icons.info,size: 25,color: Colors.white38,),
            SizedBox(width: 10,),
          ],
        ),
        body: PageView.builder(itemBuilder: (context, index) {
          return Image.asset("${providerF!.ImageList[index].img}",fit: BoxFit.fill,);
        },itemCount: providerF!.ImageList.length,),

      ),
    );
  }
}
