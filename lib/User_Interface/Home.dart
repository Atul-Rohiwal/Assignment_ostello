import 'package:flutter/material.dart';
import 'package:ostello/Common/Plain_Text.dart';
import 'package:ostello/Common/bold_text.dart';
import 'package:provider/provider.dart';

import '../Common/Provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<User>(builder: (context, User, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  PlainText(
                    name: "Hi, ",
                    fontsize: 18,
                  ),
                  BoldText(
                    name: User.name,
                    fontsize: 18,
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Colors.blue,
                  ),
                  PlainText(name: 'Location: ', fontsize: 18),
                  BoldText(
                    name: User.location,
                    fontsize: 18,
                  ),
                ],
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                radius: 25,
                child: Image.asset(
                  'Assets/Images/down1.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Stack(children: [
                  Image.asset(
                    'Assets/Images/downlo.png',
                    fit: BoxFit.fill,
                    height: size.height * 0.68,
                    width: double.infinity,
                  ),
                  Positioned(
                      child: Column(
                    children: [
                      Container(
                        height: size.height * 0.4,
                        width: size.height * 0.54,
                        child: Image.asset(
                          'Assets/Images/down1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      BoldText(
                        name: "No Guessing, Just Knowing:",
                        fontsize: 25,
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Your",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "Career Path",
                            style: TextStyle(
                                backgroundColor: Colors.yellow,
                                color: Colors.blueAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Awaits!",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      Center(
                        child: PlainText(
                            name:
                                "Unlock your potential and get an instant \n       report on customized carrier",
                            color: Colors.white,
                            fontsize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Start Assessment',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ],
                  ))
                ]),
                Align(
                    alignment: Alignment.topLeft,
                    child: BoldText(
                      name: 'Top Services',
                      fontsize: 30,
                    )),
                SizedBox(
                  height: 12,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 150,
                          width: 165,
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 120,
                                child: Image.asset(
                                  'Assets/Images/down.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              PlainText(
                                name: "Career Trends",
                                fontsize: 22,
                              )
                            ],
                          )),
                      Container(
                          height: 150,
                          width: 165,
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            children: [
                              SizedBox(
                                  height: 80,
                                  width: 120,
                                  child: Image.asset(
                                    'Assets/Images/topi.png',
                                    fit: BoxFit.fill,
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              PlainText(name: 'Scholarships', fontsize: 22)
                            ],
                          )),
                    ]),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BoldText(name: 'Your Career Roadmap', fontsize: 20),
                          PlainText(
                              name:
                                  'Those who plan ahead, \n hold the key of the future.',
                              fontsize: 16),
                          Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: PlainText(
                              name: 'Create Now',
                              color: Colors.lightBlue,
                              fontsize: 18,
                            )),
                          )
                        ],
                      ),
                      SizedBox(
                          height: 180,
                          width: 170,
                          child: Image.asset(
                            'Assets/Images/errow.png',
                            fit: BoxFit.fill,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(width: 1.5, color: Colors.black)),
                    child: Row(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              BoldText(name: "Refer & Earn", fontsize: 24),
                              SizedBox(
                                height: 12,
                              ),
                              PlainText(
                                  name:
                                      'Invite a friend to \nostello & earn \n1000rs worths.',
                                  fontsize: 20)
                            ]),
                        SizedBox(
                          height: 200,
                          width: 220,
                          child: Image.asset('Assets/Images/wallet.png',
                              fit: BoxFit.fill),
                        )
                      ],
                    )),
                SizedBox(
                  height: 12,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 130,
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.info,
                                  color: Colors.blue,
                                ),
                                PlainText(name: 'Coaching', fontsize: 18)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 100,
                            width: 130,
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.money_off,
                                    color: Colors.blue, size: 35),
                                PlainText(
                                    name: 'Free Career\n   Check', fontsize: 18)
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 130,
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.catching_pokemon,
                                  color: Colors.blue,
                                  size: 35,
                                ),
                                PlainText(name: 'Lowest Price', fontsize: 18)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 100,
                            width: 130,
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.auto_graph_sharp,
                                  color: Colors.blue,
                                  size: 35,
                                ),
                                PlainText(
                                    name: 'Progress \nTracking', fontsize: 18)
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                          height: 210,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Image.asset(
                            'Assets/Images/download.png',
                            fit: BoxFit.fill,
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 16),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          width: 320,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BoldText(
                                      name: 'Refer & Earn',
                                      fontsize: 25,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    PlainText(
                                        name:
                                            "Invite a Friend to ostello \n and earn 1000 worth coins",
                                        fontsize: 18,
                                        color: Colors.white)
                                  ]),
                              CircleAvatar(
                                radius: 45,
                                child:
                                    Image.asset("Assets/Images/Indianlogo.png"),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 150,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BoldText(
                                      name: 'Refer & Earn',
                                      fontsize: 30,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    PlainText(
                                        name:
                                            "Invite a Friend to ostello \n and earn 1000 worth coins",
                                        fontsize: 22,
                                        color: Colors.white)
                                  ]),
                              CircleAvatar(
                                radius: 48,
                                child:
                                    Image.asset("Assets/Images/Indianlogo.png"),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: BoldText(
                    name: 'Quick Info..',
                    fontsize: 30,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          height: 250,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BoldText(name: "Career Trend..", fontsize: 25),
                              PlainText(
                                  name:
                                      "Those who plan ahead hod the key\n to the futrue.Construct a stragic \ncareen path today. those who plan \n ahead hold the key to the futurconsturct\n a careen path today. those\ who pan ahead hold the key to the future\n construct strategic career paht today.",
                                  fontsize: 18),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                height: 55,
                                width: 300,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Center(
                                  child: BoldText(
                                    name: "Explore Now",
                                    fontsize: 25,
                                    color: Colors.blue,
                                  ),
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                          height: 250,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BoldText(name: "Career Trend..", fontsize: 25),
                              PlainText(
                                  name:
                                      "Those who plan ahead hod the key\n to the futrue.Construct a stragic \ncareen path today. those who plan \n ahead hold the key to the futurconsturct\n a careen path today. those\ who pan ahead hold the key to the future\n construct strategic career paht today.",
                                  fontsize: 18),
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blueGrey,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          BoldText(
                              name:
                                  "Guiding You \n through the \n maze of \n choices",
                              fontsize: 35),
                          SizedBox(
                              height: 280,
                              width: 250,
                              child: Image.asset(
                                'Assets/Images/rocket.png',
                                fit: BoxFit.fill,
                              ))
                        ],
                      ),
                    )),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.store_mall_directory_sharp),
                label: "Marketplace",
                backgroundColor: Colors.red),
          ],
        ),
      );
    });
  }
}
