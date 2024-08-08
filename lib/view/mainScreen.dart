import 'package:flutter/material.dart';
import 'package:my_first_project/controller/fetchmeme.dart';

class MainScreen extends StatefulWidget {
   MainScreen({super.key});


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void UpdateImg() async{
    String getImgUrl= await FetchMeme.fetchmeme();
    setState(() {
      imgUrl=getImgUrl;
    });
  }
  String imgUrl="https://i.redd.it/zqlt4310abhd1.gif";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ensures the column takes minimum space needed
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("Meme #21",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
            SizedBox(height: 10),
            Text("Target 500 memes",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),
            SizedBox(height: 30),
            Image.network(imgUrl), // Replace with a valid image URL
            ElevatedButton(
              onPressed: () {
                UpdateImg();
              },
              child: Container(
                height: 70,
                  width: 90,
                  child: Center(child: Text("More Fun!!"))),
            ),
            TextButton(
              onPressed: () {},
              child: Text("ADFA"),
            ),
            OutlinedButton(
                onPressed: (){},
                child: Text("FAF"))
          ],
        ),
      ),
    );
  }
}
