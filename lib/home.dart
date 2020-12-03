import 'package:flutter/material.dart';
import 'package:venados/players.dart';
import 'package:venados/stats.dart';
import 'package:venados/utils/colors.dart';
import 'package:venados/utils/textstyles.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Image.asset(
                'lib/assets/venados.png',
                height: 88.0,
              ),
              decoration: BoxDecoration(
                color: greenpaste,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Home',
                style: germanicogdegrey,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.stacked_bar_chart),
              title: Text(
                'Estadísticas',
                style: germanicogdegrey,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Stats()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text(
                'Jugadores',
                style: germanicogdegrey,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Players()),
                );
              },
            ),
          ],
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 222.0,
              floating: true,
              pinned: true,
              snap: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                // title: Text(
                //   'Venados Test',
                //   style: germanicobco,
                // ),
                background: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28.0),
                  child: Image.asset(
                    'lib/assets/venados.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              bottom: TabBar(
                onTap: (index) {},
                tabs: [
                  Tab(
                    icon: Icon(Icons.cloud),
                    child: Text(
                      'Copa MX',
                      style: germanicobco,
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.cloud_upload),
                    child: Text(
                      'Ascenso MX',
                      style: germanicobco,
                    ),
                  )
                ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  Center(
                      child: Text(
                    '0',
                    style: germanicogdebold,
                  )),
                  Center(
                      child: Text(
                    '1',
                    style: germanicogdebold,
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
