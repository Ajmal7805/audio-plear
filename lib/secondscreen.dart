import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Thirdscreen.dart';

import 'main1.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
 
  

  Widget buildkey({required Color color, required int soundnumber}) {
    return MaterialButton(
      color: color,
      onPressed: () {
       Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Thirdscreen(soundnumber: soundnumber,);
              },
            ));
      },
       height: 77,
       minWidth: double.infinity,
           
      shape: RoundedRectangleBorder(
        
      ),
      child: Row(
              children: [
                Image.asset(
                  'images/Rectangle 5.png',
                  height: 56,
                  width: 56,
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'EP101:UIX Design University|Listen',
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'future of the UI/UX Design',
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'UI Breakfast  |  25:30',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.black,
                          ),
                        ),
                         Row(crossAxisAlignment: CrossAxisAlignment.end,
                           children: [
                             Icon(Icons.play_circle_fill_rounded,color: Color(0xff865DFF),),
                           ],
                         )
                      ],
                    )
                    )
              ],
            )
    );
   
  }
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Container(
       
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 50),
                child: Image.asset('images/Rectangle 9.png', height:198 ,width: double.infinity,),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 50),
                height:198 ,width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white.withOpacity(.1),Colors.white])
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 10.0),
                child: Container(
                  height: 128,
                  width: 128,
                  child: Image.asset('images/Rectangle 7.png'),
                ),
              ),
              
            ],
          ),
          
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'UI Breakfast',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'UI/UX Design And Product Strategy',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          '12k',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )),
                    Expanded(
                        child: Text(
                      '|',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          '250',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Episodes',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Text(
                      '|',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          '1.2M',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Listeners',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage('images/Frame 20.png'),
                      height: 62,
                      width: 130,
                    ),
                    Expanded(
                        child: Image(
                      image: AssetImage('images/heart 1.png'),
                      height: 24,
                      width: 24,
                    )),
                    Expanded(
                        child: Image(
                      image: AssetImage('images/download 1.png'),
                      height: 24,
                      width: 24,
                    )),
                    Expanded(
                        child: Image(
                      image: AssetImage('images/more-circle 1.png'),
                      height: 28,
                      width: 28,
                    )),
                  ],
                ),
                Divider(
                  thickness: 2,color: Colors.black,
                ),
                
              ],
            ),
          ),
        ],
      ),
      Expanded(
        child: ListView(physics: ScrollPhysics(),
         
          children: [
         
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Text(
                        'Episodes',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                      Icon(Icons.arrow_forward_ios_rounded,
                          color: Colors.black, size: 18)
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
             buildkey(color: Colors.white, soundnumber: 1),
              buildkey(color: Colors.white, soundnumber: 2),
              buildkey(color: Colors.white, soundnumber: 3),
          ],
        ),
      )
           

          ],
        ),
      ))
    );
  }
}
