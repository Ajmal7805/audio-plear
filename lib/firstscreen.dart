import 'package:flutter/material.dart';
import 'package:flutter_application_1/searchscreen.dart';
import 'package:flutter_application_1/secondscreen.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Image.asset('images/photo.png'),
        ),
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Good Mornning',
                    style: TextStyle(
                        fontSize: 12,
                        color: const Color(0xff060047).withOpacity(.5)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.waving_hand_outlined,
                    color: Colors.yellow,
                    size: 12,
                  )
                ],
              ),
              const Text(
                'Andrew Smith',
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff060047),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'images/notification 1.png',
                height: 22,
                width: 22,
              ))
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        onDestinationSelected: (int index) {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const Searchscreen();
            },
          ));
        },
        indicatorColor:
            const Color.fromARGB(255, 237, 193, 212).withOpacity(.8),
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Color(0xff865DFF),
            ),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.play_circle),
            icon: Icon(Icons.play_circle),
            label: 'Songs',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: DefaultTabController(
        length: 4,
        child: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.brown[50],
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 18,
                    color: Colors.black,
                  ),
                  hintText: 'What Would You Like To Listen ?',
                  hintStyle: const TextStyle(fontSize: 12, color: Colors.black),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none),
                  suffixIcon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/filter 1.png',
                        height: 18,
                        width: 18,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 39,
              ),
              const TabBar(indicatorColor: Colors.red, tabs: [
                Tab(
                    iconMargin: EdgeInsets.all(0),
                    child: Text(
                      'ForYou',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )),
                Tab(
                    child: Text(
                  'Podcast',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )),
                Tab(
                    child: Text(
                  'Radio',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )),
                Tab(
                    child: Text(
                  'AudioBook',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 9,
                      fontWeight: FontWeight.bold),
                ))
              ]),
              Expanded(
                child: TabBarView(children: [
                  ListView(
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 128,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xffE90064)),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(11),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Podcast App Design',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    'Listen The Future Of UI/UXSS',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Image(
                                    image: AssetImage('images/Group 1.png'),
                                    height: 24,
                                    width: 43,
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Guests: Larry + Tom',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Image.asset('images/bro.png'),
                              height: 110,
                              width: 157.16,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Row(
                        children: [
                          Expanded(
                              child: Text(
                            'Popular Categories',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black,
                            size: 18,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 80,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              height: 64,
                              minWidth: 215,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              color: const Color(0xffD9D9D9),
                              child: Container(
                                margin: const EdgeInsets.all(20),
                                child: const Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                            'images/Rectangle 3.png',
                                          ),
                                          height: 40,
                                          width: 40,
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Self Development',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              '150+ podcasts',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            MaterialButton(
                              onPressed: () {},
                              height: 64,
                              minWidth: 215,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              color: const Color(0xffD9D9D9),
                              child: Container(
                                margin: const EdgeInsets.all(20),
                                child: const Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                            'images/box.png',
                                          ),
                                          height: 40,
                                          width: 40,
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Motivational Development',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              '200+ podcasts',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Text(
                            'New Release',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                          Icon(Icons.arrow_forward_ios_rounded,
                              color: Colors.black, size: 18)
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Secondscreen();
                          }));
                        },
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Image.asset(
                                'images/Rectangle 5.png',
                                height: 100,
                                width: 100,
                              ),
                              Container(
                                  margin: const EdgeInsets.all(5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      const Text(
                                        'UIX Design University | Listen to the',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Text(
                                        'future of the UI/UX Design',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        'UI Breakfast  |  25:30',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'images/Frame 20.png',
                                            height: 34,
                                            width: 81,
                                          ),
                                          Image.asset(
                                            'images/folder 1.png',
                                            height: 24,
                                            width: 24,
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          Image.asset(
                                            'images/more-circle 1.png',
                                            height: 24,
                                            width: 24,
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          Image.asset(
                                            'images/download 1.png',
                                            height: 22,
                                            width: 22,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    color: Colors.white,
                  ),
                  Container(
                    color: Colors.white,
                  ),
                  Container(
                    color: Colors.white,
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
