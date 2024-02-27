import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  Contact({required this.Img});
  var Img;
  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  List<String> NameList = [
    'Mayank',
    'Meet',
    'Shyam',
    'Umang Sir',
    'Vishruta',
    'Sanjana',
    'Vidushi',
    'Krishna',
    'Madhvi',
    'Trisha',
    'Mayank',
    'Meet',
    'Shyam',
    'Umang Sir',
    'Vishruta',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select Contact\n 15 Contacts',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        backgroundColor: Color(0xff075E54),
        actions: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.search),
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Invite a contact'),
                value: 1,
              ),
              PopupMenuItem(
                child: Text('Contacts'),
                value: 1,
              ),
              PopupMenuItem(
                child: Text('Refresh'),
                value: 1,
              ),
              PopupMenuItem(
                child: Text('Help'),
                value: 1,
              ),
            ],
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.more_vert),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  child: Icon(
                    Icons.person_sharp,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.teal.shade500,
                ),
              ),
              Text(
                'New Group',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  child: Icon(
                    Icons.person_add_sharp,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.teal.shade500,
                ),
              ),
              Text(
                'New Contact',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 140,
              ),
              Icon(
                Icons.qr_code,
                size: 30,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 160.0, top: 10, left: 25),
            child: Text(
              'Contacts on WhatsApp',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(widget.Img[index]),
                    ),
                    title: Text(
                      NameList[index],
                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
