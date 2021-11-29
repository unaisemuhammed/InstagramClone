import 'package:flutter/material.dart';

///StatusRow
Widget statusRow(BuildContext context) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;
  return Container(
    width: screenWidth,
    height: screenHeight / 6,
    child: FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return ListView.builder(
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  height: screenHeight * 0.13,
                  width: screenWidth * 0.18,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/sintel-3.jpg'),
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                ),
                const Text(
                  'Your story',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            );
          },
        );
      },
    ),
    decoration: const BoxDecoration(
      border: Border(bottom: BorderSide(color: Colors.grey, width: .2)),
    ),
  );
}

///PostContainer
Widget postContainer(BuildContext context) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;
  return Container(
    padding: const EdgeInsets.only(top: 10),
    height: screenWidth+60,
    width: screenWidth,
    child:FutureBuilder(
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return ListView.builder(itemCount: 10,itemBuilder: (BuildContext, int){
          return  Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    border:
                    Border(bottom: BorderSide(color: Colors.grey, width: .0))),
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage('assets/images/sintel-3.jpg'),
                            ),
                            Text(
                              '  sarang',
                              style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert),
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset('assets/images/sintel_cover.jpg'),
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/Messenger.png',
                            scale: 20,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/paper plane.png',
                            scale: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_border,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Sarang  ',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: Text('''Winter wonderland brought to you by 
from different places in switzerland ,Which place would you like  to visit in your life''',overflow:TextOverflow.ellipsis,),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        });
      }
    ),
  );
}
