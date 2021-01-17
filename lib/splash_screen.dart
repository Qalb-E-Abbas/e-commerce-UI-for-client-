
import 'package:flutter/material.dart';

import 'login_page.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('AVANT POS',
              style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
            Text('POINT OF SALE FOR WHOLESALERS AND RETAILERS',
              style: TextStyle(color: Colors.white, fontSize: 15,),)

          ],
        ),
      ),
    );
  }
}
