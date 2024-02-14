import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main1.dart';

class Thirdscreen extends StatefulWidget {
  const Thirdscreen({super.key, required this.soundnumber,});
  final int soundnumber;

  @override
  State<Thirdscreen> createState() => _ThirdscreenState();
}

class _ThirdscreenState extends State<Thirdscreen> {
  double slidervalue = 0;
  final player = AudioPlayer();
  double max = 1000;
 Duration? position ;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getlenghth();
     player.play(AssetSource('${widget.soundnumber}.mp3'));
    player.onPositionChanged.listen((event) { 
      log("message");
      setState(() {
        position = event;
        slidervalue = event.inSeconds.toDouble();
      });
    });
  }
 

 getlenghth()async{
 var maxx = await  player.getDuration()??Duration(minutes: 1);
 max = maxx.inMinutes*60;
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF7E0EA),
        appBar: AppBar(
          leading: InkWell(onTap: () {
            Navigator.pop(context);
          },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          backgroundColor: Color(0xffF7E0EA),
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Podcast Detail',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 16, right: 17),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.2, 1),
                        colors: <Color>[
                          Color(0xffF7E0EA),
                          Color(0xffF7E0EA),
                        ],
                        tileMode: TileMode.mirror,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 344,
                        width: 207,
                        child: Image(
                          image: AssetImage('images/Rectangle 13.png'),
                          height: 344,
                          width: 207,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 29.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage('images/Rectangle 12.png'),
                            height: 344,
                            width: 279,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 35.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage('images/Rectangle 11.png'),
                            height: 344,
                            width: 327,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 69,
              ),
              Text(
                '612: Eliza Jackson  |  The Real Life of a UI Designer',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'UI Breakfast Show',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Slider(
                value: slidervalue,
                max:  max+1000,

                min: 0,
                activeColor: Colors.red,
                onChanged: (value) {
                  setState(() {
                    slidervalue = value;
                  });
                },
              ),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      slidervalue.toString(),
                      style: TextStyle(fontSize: 10),
                    ),
                  )),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: Text(
                      "00:00",
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                    onTap: () {},
                    child: Image(
                      image: AssetImage('images/1.png'),
                      height: 24,
                      width: 24,
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      player.seek(  position!-  Duration(seconds: 10));
                    },
                    child: Image(
                      image: AssetImage('images/2.png'),
                      height: 24,
                      width: 24,
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      if(player.state==PlayerState.playing){
player.pause()     ;               

                      }else if(player.state==PlayerState.paused){
                        player.resume()     ;               

                      }
                      
                    },
                    child: Image(
                      image: AssetImage('images/3.png'),
                      height: 80,
                      width: 80,
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                        onTap: () {
                           player.seek(  position!+  Duration(seconds: 10));
                        },
                        child: Image(
                          image: AssetImage('images/4.png'),
                          height: 24,
                          width: 24,
                        ),
                      )),
                  Expanded(
                      child: InkWell(
                    onTap: () {},
                    child: Image(
                      image: AssetImage('images/5.png'),
                      height: 24,
                      width: 24,
                    ),
                  )),
                ],
              ),
            ],
          ),
        ));
  }
}
