import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final List<Widget> pages = const [
    HomePage(),
    SearchPage(),
    AddPage(),
    FavoritePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,

        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.black,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            label: "Search",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            activeIcon: Icon(Icons.add_circle),
            label: "Add",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            activeIcon: Icon(Icons.favorite),
            label: "Favorite",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

// HOME
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "Home",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              Spacer(),
              Icon(Icons.video_camera_back, color: Colors.black, size: 30),
            ],
          ),
          SizedBox(height: 15),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 222, 181, 34),
            ),
            child: Center(
              child: Text(
                "Listening",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 181, 75, 42),
            ),
            child: Center(
              child: Text(
                "Speaking",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 14, 80, 194),
            ),
            child: Center(
              child: Text(
                "Reading",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 226, 42, 29),
            ),
            child: Center(
              child: Text(
                "Writing",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// SEARCH
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
          children: [
          Padding(
          padding: const EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Qidiruvlar...",
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: Colors.grey,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none, 
              ),
            ),
          ), 
         ),
         const Center(
           child: Icon(Icons.search, color: Colors.grey, size: 40),
         ),
       ],
      ),
    );
  }
}

// ADD
class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: Colors.blue,
            size: 40,
          ),
        ),
      ),
    );
  }
}

// FAVORITE
class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {}, 
            child: const Text("Favorite videos"),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Favorite photos"),
          ),
        ],
      ),
    );
  }
}

// PROFILE
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile", style: TextStyle(fontSize: 25)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 30,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "Mashrab Habibullayev",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Text("100", style: TextStyle(fontSize: 20)),
                        ),
                        SizedBox(height: 5),
                        Center(
                          child: Text("Videos", style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Text("100 M", style: TextStyle(fontSize: 20)),
                        ),
                        SizedBox(height: 5),
                        Center(
                          child: Text("Followers", style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Text("350", style: TextStyle(fontSize: 20)),
                        ),
                        SizedBox(height: 5),
                        Center(
                          child: Text("Following", style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text("My Videos", style: TextStyle(fontSize: 15, color: Colors.black)),
                Spacer(),
                Text("See all", style: TextStyle(fontSize: 15, color: Colors.deepPurpleAccent)),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.black,
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.play_arrow, color: Colors.white, size: 20),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.black,
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.play_arrow, color: Colors.white, size: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.settings,
                  ),
                  title: Text(
                    "Settings", 
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.notifications_none,
                  ),
                  title: Text(
                    "Notifications", 
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.lock,
                  ),
                  title: Text(
                    "Privacy", 
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.help_outline,
                  ),
                  title: Text(
                    "Help & Support", 
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}