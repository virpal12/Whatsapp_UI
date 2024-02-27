import 'package:flutter/material.dart';
import 'package:whatsapp_ui/contact.dart';

void main() {
  runApp(const whatsapp());
}

class whatsapp extends StatelessWidget {
  const whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatApp(),
    );
  }
}

class ChatApp extends StatefulWidget {
  const ChatApp({super.key});

  @override
  State<ChatApp> createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {

  // making list which is use in UI

  List Img = [
    'https://images.unsplash.com/photo-1686249959385-ee6c7dcdf0ec?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8d2hhdHNhcHAlMjBkcCUyMGZvciUyMGJveXN8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1634833740183-3193a06cac2b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8d2hhdHNhcHAlMjBkcCUyMGZvciUyMGJveXN8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1592046285097-6cdf4daf0d69?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8d2hhdHNhcHAlMjBkcCUyMGZvciUyMGJveXN8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1656792213776-a900d686f2de?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8d2hhdHNhcHAlMjBkcCUyMGZvciUyMGJveXN8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1504194921103-f8b80cadd5e4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHdoYXRzYXBwJTIwZHAlMjBmb3IlMjBHSVJMU3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1456412684996-31507d7d17b6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHdoYXRzYXBwJTIwZHAlMjBmb3IlMjBHSVJMU3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1603145733146-ae562a55031e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHdoYXRzYXBwJTIwZHAlMjBmb3IlMjBHSVJMU3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1633675254245-efd890d087b8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8d2hhdHNhcHAlMjBkcCUyMGZvciUyMEdJUkxTfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1686249959385-ee6c7dcdf0ec?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8d2hhdHNhcHAlMjBkcCUyMGZvciUyMGJveXN8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1634833740183-3193a06cac2b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8d2hhdHNhcHAlMjBkcCUyMGZvciUyMGJveXN8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1592046285097-6cdf4daf0d69?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8d2hhdHNhcHAlMjBkcCUyMGZvciUyMGJveXN8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1656792213776-a900d686f2de?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8d2hhdHNhcHAlMjBkcCUyMGZvciUyMGJveXN8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1504194921103-f8b80cadd5e4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHdoYXRzYXBwJTIwZHAlMjBmb3IlMjBHSVJMU3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1456412684996-31507d7d17b6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHdoYXRzYXBwJTIwZHAlMjBmb3IlMjBHSVJMU3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1603145733146-ae562a55031e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHdoYXRzYXBwJTIwZHAlMjBmb3IlMjBHSVJMU3xlbnwwfHwwfHx8MA%3D%3D',
  ];
  List<String> Name = [
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

  List<Map<String, dynamic>> msg = [
    {"Message": "Good Morning"},
    {"Message": "Hiiii"},
    {"Message": "Good Morning"},
    {"Message": "How r u?"},
    {"Message": "Good Morning"},
    {"Message": "whats up"},
    {"Message": "Good Morning"},
    {"Message": "Jay Mataji"},
    {"Message": "Good Morning"},
    {"Message": "kem cho?"},
    {"Message": "Good Morning"},
    {"Message": "i'm fine"},
    {"Message": "Good Morning"},
    {"Message": "will meet you tommorrow"},
    {"Message": "Good Morning"},
  ];

  List<Map<String, dynamic>> Time = [
    {"Time": "7:00 Am"},
    {"Time": "8:00 Am"},
    {"Time": "10:00 Am"},
    {"Time": "11:00 Am"},
    {"Time": "10:10 Am"},
    {"Time": "9:06 Am"},
    {"Time": "7:32 Am"},
    {"Time": "8:00 Am"},
    {"Time": "9:20 Am"},
    {"Time": "11:33  Am"},
    {"Time": "10:00 Am"},
    {"Time": "11:00 Am"},
    {"Time": "10:10 Am"},
    {"Time": "9:06 Am"},
    {"Time": "7:32 Am"},
  ];

  List call = [
    "you have missed call",
    "Video call",
    "you have missed call",
    "Video call",
    "you have missed call",
    "Video call",
    "you have missed call",
    "Video call",
    "you have missed call",
    "Video call",
    "you have missed call",
    "Video call",
    "you have missed call",
    "Video call",
    "you have missed call",
  ];

  List Icn = [
    Icons.call_missed,
    Icons.video_call_outlined,
    Icons.call_missed,
    Icons.video_call_outlined,
    Icons.call_missed,
    Icons.video_call_outlined,
    Icons.call_missed,
    Icons.video_call_outlined,
    Icons.call_missed,
    Icons.video_call_outlined,
    Icons.call_missed,
    Icons.video_call_outlined,
    Icons.call_missed,
    Icons.video_call_outlined,
    Icons.call_missed,
  ];
  List Rang = [
    Colors.red,
    Colors.green,
    Colors.red,
    Colors.green,
    Colors.red,
    Colors.green,
    Colors.red,
    Colors.green,
    Colors.red,
    Colors.green,
    Colors.red,
    Colors.green,
    Colors.red,
    Colors.green,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Whatsapp',
              style: TextStyle(fontSize: 27, letterSpacing: 2),
            ),
            backgroundColor: Color(0xff075E54),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.camera_alt),
              ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.search),
        ),





              PopupMenuButton(
                  child: Icon(Icons.more_vert),
                  itemBuilder: (context) => [
                        PopupMenuItem(value: '1', child: Text('New Group')),
                        PopupMenuItem(
                            value: '1', child: Text('New Broadcast Group')),
                        PopupMenuItem(value: '2', child: Text('Refresh')),
                        PopupMenuItem(value: '3', child: Text('Linked Device')),
                        PopupMenuItem(value: '4', child: Text('Setting')),
                      ]),
            ],
            bottom: TabBar(tabs: [
              Tab(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(Icons.camera_alt),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text('Chats'),
                    )
                  ],
                ),
              ),
              Tab(text: 'Status'),
              Tab(text: 'Call'),
            ]),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(Img[index]),
                      ),
                      title: Text(
                        Name[index],
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        msg[index]["Message"],
                        style: TextStyle(color: Colors.green),
                      ),
                      trailing: Text(
                        Time[index]['Time'],
                        style: TextStyle(color: Colors.green),
                      ),
                    );
                  }),
              ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(width: 3, color: Colors.green),
                        ),
                        child: CircleAvatar(
                          foregroundImage: NetworkImage(Img[index]),
                        ),
                      ),
                      title: Text(
                        Name[index],
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      // subtitle: Text(
                      //   msg[index]["Message"],
                      //   style: TextStyle(color: Colors.green),
                      // ),
                      trailing: Text(
                        Time[index]['Time'],
                        style: TextStyle(color: Colors.green),
                      ),
                    );
                  }),
              ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(Img[index]),
                      ),
                      title: Text(
                        Name[index],
                        style: TextStyle(
                            color: Rang[index],
                            fontSize: 19,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(call[index]),
                      trailing: Icon(
                        Icn[index],
                        color: Rang[index],
                      ),
                    );
                  }),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Contact(Img: Img)));
            },
            child: Icon(
              Icons.chat,
            ),
            backgroundColor: Color(0xff075E54),
          ),
        ),
      ),
    );
  }
}
