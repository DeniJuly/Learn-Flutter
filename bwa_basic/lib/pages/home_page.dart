import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
              children: [
                Image.asset('assets/beach.jpg'),
                SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Title Beach',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          Text('Jawa Tengah, Indonesia',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.favorite, color: Colors.amber,size: 35,),
                          SizedBox(width: 5,),
                          Text('4.5',)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.call, color: Colors.blue, size: 18,),
                          SizedBox(height: 10,),
                          Text('Call', style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.near_me, color: Colors.blue, size: 18,),
                          SizedBox(height: 10,),
                          Text('Route', style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.share, color: Colors.blue, size: 18,),
                          SizedBox(height: 10,),
                          Text('Share', style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue
                          ),)
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum \n\n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                    style: TextStyle(
                      fontSize: 12,
                    ), textAlign: TextAlign.justify
                  ),
                ),
                SizedBox(height: 30,)
              ],
            )
        ),
      );
  }
}
