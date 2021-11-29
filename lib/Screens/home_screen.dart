import 'package:flutter/material.dart';
import 'package:instagram/widgets/status_row.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          items:  [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 35,color: Colors.black,),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search,color: Colors.black,),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/instagram-reel.png',scale: 20,color: Colors.black,),
              label: 'School',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border,color: Colors.black,),
              label: 'Business',
            ),
            const BottomNavigationBarItem(
              icon: CircleAvatar(radius: 15, backgroundImage: AssetImage('assets/images/sintel-3.jpg'),),
              label: 'Business',
            ),
          ],

      ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Image.asset(
            'assets/images/2560px-Instagram_logo.svg.png',
            scale: 20,
          ),
          actions: [
            Image.asset(
              'assets/images/809337-200.png',
              scale: 6,
            ),
            Image.asset(
              'assets/images/facebook-messenger-logo-black-and-white-11549681807l9jkugvdt7.png',
              scale: 30,
            ),
          ],
        ),
        body: Container(
          child: ListView(
            children: [
              statusRow(context),
              postContainer(context),
            ],
          ),
        ),
      ),
    );
  }

}
