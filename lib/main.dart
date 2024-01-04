import 'package:flutter/material.dart';
import 'package:whatsapp/models/circleavatarlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: const Color(0xFF171717),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        _globalKey.currentState!.openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Messages',
                        style: TextStyle(color: Colors.grey, fontSize: 24),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Groups',
                        style: TextStyle(color: Colors.grey, fontSize: 24),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Status',
                        style: TextStyle(color: Colors.grey, fontSize: 24),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Online',
                        style: TextStyle(color: Colors.grey, fontSize: 24),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0XFF27c1a9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              height: 225,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 25, right: 25, top: 15, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Favourite Contacts',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return buildContactAvatar(contacts[index].name,
                                  contacts[index].imgname);
                            },
                            separatorBuilder: (context, int) {
                              return SizedBox(
                                width: 2,
                              );
                            },
                            itemCount: contacts.length)
                        // ListView(
                        //   scrollDirection: Axis.horizontal,
                        //   children: [
                        //     buildContactAvatar('kashan', 'shani.jpg'),
                        //     buildContactAvatar('Hamxa', 'im5.jpg'),
                        //     buildContactAvatar('Ali', 'shani.jpg'),
                        //     buildContactAvatar('Adil', 'im4.jpg'),
                        //     buildContactAvatar('Rana', 'im5.jpg'),
                        //   ],
                        // ),
                        ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 340,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Color(0xFFEFFFFC),
              ),
              child: ListView(
                padding: const EdgeInsets.only(left: 10),
                children: [
                  ConversationRow('Adil', 'How are you', 'shani.jpg'),
                  ConversationRow('Shani', 'Good', 'im4.jpg'),
                  ConversationRow('Hamza', 'ok', 'im5.jpg'),
                  ConversationRow('Ali', 'fine', 'shani.jpg'),
                  ConversationRow('Usama', 'Alright', 'shani.jpg'),
                  ConversationRow('Uzair', 'Great', 'im5.jpg'),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () {},
          backgroundColor: const Color(0XFF27c1a9),
          child: const Icon(
            Icons.edit_outlined,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      drawer: Container(
        color: Colors.grey.shade900,
        child: const Drawer(
          width: 275,
          backgroundColor: Colors.black26,
          child: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: drawerOptions(
                          icon: Icons.arrow_back,
                          option: 'Settings',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          UserAvatar(filename: 'shani.jpg'),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Kashan Ahmad',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      drawerOptions(option: 'Accounts', icon: Icons.key),
                      SizedBox(
                        height: 20,
                      ),
                      drawerOptions(option: 'Chats', icon: Icons.chat),
                      SizedBox(
                        height: 20,
                      ),
                      drawerOptions(
                          option: 'Notifications', icon: Icons.notifications),
                      SizedBox(
                        height: 20,
                      ),
                      drawerOptions(option: 'Help', icon: Icons.help),
                    ],
                  ),
                ),
                drawerOptions(option: 'Logout', icon: Icons.logout),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Column ConversationRow(String name, String message, String filename) {
    return Column(
      children: [
        Row(
          children: [
            UserAvatar(filename: filename),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  message,
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 120,
            ),
          ],
        ),
        const Divider(
          indent: 70,
        )
      ],
    );
  }

  Column buildContactAvatar(String name, String filename) {
    return Column(
      children: [
        UserAvatar(
          filename: filename,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class drawerOptions extends StatelessWidget {
  final String option;
  final IconData icon;
  const drawerOptions({
    super.key,
    required this.option,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              icon,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
        Text(
          option,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          width: 35,
        ),
      ],
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: CircleAvatar(
        radius: 32,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 29,
          backgroundImage: Image.asset('assets/images/$filename').image,
        ),
      ),
    );
  }
}
