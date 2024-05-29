import 'package:flutter/material.dart';
import 'package:grocery_store_app/utils/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/profile': (context) => ProfilePage(),
        '/messages': (context) => MessagesPage(),
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: primaryColors, // Use primary color from your theme
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message, color: primaryColors), // Icon color
              title: Text('Messages'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MessagesPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle, color: primaryColors), // Icon color
              title: Text('Profile'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: primaryColors), // Icon color
              title: Text('Settings'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
              },
            ),
          ],
        ),
      ),
      body: HeaderParts(scaffoldKey: _scaffoldKey),
    );
  }
}

class HeaderParts extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const HeaderParts({super.key, required this.scaffoldKey});

  @override
  State<HeaderParts> createState() => _HeaderPartsState();
}

int indexCategory = 0;

class _HeaderPartsState extends State<HeaderParts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        topHeader(),
        const SizedBox(
          height: 30,
        ),
        title(),
        const SizedBox(
          height: 21,
        ),
        searchBar(),
        const SizedBox(
          height: 30,
        ),
        categorySelection(),
      ],
    );
  }

  Padding categorySelection() {
    // list of times
    List list = ["All", "Fruits", "Vegetables", "Grocery"];
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: SizedBox(
        height: 35,
        child: ListView.builder(
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    indexCategory = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 10,
                    ),
                    child: Text(
                      list[index],
                      style: TextStyle(
                        fontSize: 20,
                        color: indexCategory == index
                            ? primaryColors
                            : Colors.black45,
                        fontWeight:
                            indexCategory == index ? FontWeight.bold : null,
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }

  Container searchBar() {
    return Container(
      height: 55,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.green[50], borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          const Expanded(
              child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: primaryColors,
                ),
                hintText: "Cari makananmu disini",
                hintStyle: TextStyle(color: Colors.black26)),
          )),
          Material(
            color: primaryColors,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.insert_emoticon_sharp,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding title() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi Fahri",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primaryColors,
                fontSize: 18),
          ),
          Text(
            "Makan apa hari ini??",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
          ),
        ],
      ),
    );
  }

  Padding topHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          // For menu
          Material(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {
                widget.scaffoldKey.currentState?.openDrawer();
              },
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.menu_open_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Spacer(),
          // For location
          const Icon(
            Icons.location_on,
            color: primaryColors,
            size: 18,
          ),

          const Text(
            "Pamulang",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black38,
            ),
          ),
          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "asset/sir.png",
              height: 40,
              width: 40,
            ),
          )
        ],
      ),
    );
  }
}

// Halaman Profile
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: primaryColors,
      ),
      body: Center(
        child: Text('This is the profile page'),
      ),
    );
  }
}

// Halaman Messages
class MessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
        backgroundColor: primaryColors,
      ),
      body: Center(
        child: Text('This is the messages page'),
      ),
    );
  }
}

// Halaman Settings
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: primaryColors,
      ),
      body: Center(
        child: Text('This is the settings page'),
      ),
    );
  }
}
