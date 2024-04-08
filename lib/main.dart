import 'package:flutter/material.dart';
import 'package:flutter_template/template/drawer_template.dart';
import 'template/bottom_navigation_bar_template.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          color: Color.fromARGB(255, 95, 177, 244),
          foregroundColor: Colors.white,
        ),
        highlightColor: const Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.blueGrey[10],
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () => debugPrint('Search button is pressed'),
              icon: const Icon(Icons.search),
              tooltip: 'Search',
            ),
          ],
          elevation: 0.0,
          title: const Text(
            'App Demo',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(
              unselectedLabelColor: Colors.black38,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.local_florist),
                ),
                Tab(
                  icon: Icon(Icons.change_history),
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                ),
              ]),
        ),
        body: const TabBarView(
          children: [
            Icon(
              Icons.local_florist,
              size: 128,
              color: Colors.black12,
            ),
            Icon(
              Icons.change_history,
              size: 128,
              color: Colors.black12,
            ),
            Icon(
              Icons.directions_bike,
              size: 128,
              color: Colors.black12,
            ),
          ],
        ),
        drawer: const DrawerTemplate(),
        bottomNavigationBar: const BottomNavigationBarTemplate(),
      ),
    );
  }
}
