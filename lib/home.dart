import 'dart:ui';

import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  int index = 0;
  Widget build(BuildContext context) {
    List<Widget> body = [
      Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                contacts(
                  name: 'amira ali',
                  phone: '123456',
                  text: 'ahmed@gmail.com',
                  url:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd5KqiP_7htmin1ZO_xz4J9ZGEFums_SeuuuqQbqce4n4KAND-etj0j4opK_2TSPhdNIQ&usqp=CAU',
                ),
                contacts(
                  name: 'mohamed ali',
                  phone: '789123',
                  text: 'mohamed@gmail.com',

                  url:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXTxBNCdcVAGIvsptgQk6yytZMeunmbaqEeZsa6q8qaherDzKMfZSuL1sYkAVZfYoam9E&usqp=CAU',
                ),
                contacts(
                  name: 'mahmoud ali',
                  phone: '147852',
                  text: 'mahmoud@gmail.com',
                  url:
                      'https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg',
                ),
              ]),
        ),
      ),
      Center(
        child: Column(
          children: [
            AppBar(
              title: Text('Profile'),
              leading: Icon(Icons.arrow_left),
              backgroundColor: Colors.deepPurple[200],
            ),
            CircleAvatar(
              radius: 70.0,
              backgroundImage: NetworkImage(
                  'https://static.remove.bg/remove-bg-web/2a274ebbb5879d870a69caae33d94388a88e0e35/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg'),
            ),
            ListTile(
              leading: (Icon(
                Icons.edit,
                size: 30.0,
                color: Colors.deepPurple[200],
              )),
              title: Text(
                'edit photo',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            ListTile(
              leading: (Icon(
                Icons.phone,
                size: 30.0,
                color: Colors.deepPurple[200],
              )),
              title: Text(
                'phone',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            ListTile(
              leading: (Icon(
                Icons.settings,
                size: 30.0,
                color: Colors.deepPurple[200],
              )),
              title: Text(
                'settings',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
      Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                emails(
                    name: 'linked in',
                    text: 'your profile has been viewed from 2000000 people',
                    url:'https://pngimg.com/uploads/linkedIn/linkedIn_PNG38.png'
                ),
                emails(
                    name: 'coursera',
                    text: 'congrats you finish your course',
                    url:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Coursera-Logo_600x600.svg/1200px-Coursera-Logo_600x600.svg.png'),
                emails(
                    name: 'Google',
                    text: 'please verify your email',
                    url:
                        'https://play-lh.googleusercontent.com/6UgEjh8Xuts4nwdWzTnWH8QtLuHqRMUB7dp24JYVE2xcYzq4HA8hFfcAbU-R-PC_9uA1'),
              ]),
        ),
      )
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: body[index],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.deepPurple,
          selectedItemColor: Colors.white,
          iconSize: 20.0,
          onTap: (dex) {
            setState(() {
              index = dex;
            });
          },
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Contacts',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.perm_identity_sharp,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email),
              label: 'Emails',
            ),
          ],
        ),
        drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Colors.deepPurple,
                leading: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: NetworkImage(
                      'https://static.remove.bg/remove-bg-web/2a274ebbb5879d870a69caae33d94388a88e0e35/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg'),
                ),
                title: Text(
                  'yomna@gmail.com',
                ),
              ),
              ListTile(
                leading: (Icon(
                  Icons.add,
                  size: 30.0,
                )),
                title: Text(
                  'add another email',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              ListTile(
                leading: (Icon(
                  Icons.share,
                  size: 30.0,
                )),
                title: Text(
                  'share',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              ListTile(
                leading: (Icon(
                  Icons.settings,
                  size: 30.0,
                )),
                title: Text(
                  'settings',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              ListTile(
                leading: (Icon(
                  Icons.logout,
                  size: 30.0,
                )),
                title: Text(
                  'logout',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            'Email app',
          ),
        ),
      ),
    );
  }
}

class contacts extends StatelessWidget {
  String name, text, phone, url;
  contacts({this.name, this.phone, this.text, this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300.0,
        height: 170.0,
        margin: EdgeInsets.only(top: 30.0),
        decoration: BoxDecoration(
          color: Colors.deepPurple[200],
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(this.url),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.name,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.mail,
                        size: 15.0,
                        color: Colors.white,
                      ),
                      Text(this.text),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 20.0,
                        color: Colors.white,
                      ),
                      Text(this.phone),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 20.0,
                        color: Colors.amberAccent,
                      ),
                      Icon(
                        Icons.star,
                        size: 20.0,
                        color: Colors.amberAccent,
                      ),
                      Icon(
                        Icons.star,
                        size: 20.0,
                        color: Colors.amberAccent,
                      ),
                      Text('      '),
                      Text(' '),

                      Icon(
                        Icons.delete,
                        size: 25.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class emails extends StatelessWidget {
  String name, text, url;

  emails({this.name, this.text, this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300.0,
        height: 170.0,
        margin: EdgeInsets.only(top: 30.0),
        decoration: BoxDecoration(
          color: Colors.deepPurple[200],
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(this.url),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.name,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                      Icon(
                        Icons.mail,
                        size: 15.0,
                        color: Colors.white,
                      ),
                      Text(this.text),

                      Icon(
                        Icons.delete,
                        size: 25.0,
                        color: Colors.white,
                      ),
                    ],
                  ),


            )
          ],
        ));
  }
}
