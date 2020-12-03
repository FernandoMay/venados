import 'package:flutter/material.dart';
import 'package:venados/home.dart';
import 'package:venados/players.dart';
import 'package:venados/utils/colors.dart';
import 'package:venados/utils/textstyles.dart';

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.stacked_bar_chart),
              title: Text(
                'Estadísticas',
                style: germanicogdegrey,
              ),
              onTap: () {
                Navigator.pop(context);
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 222.0,
            floating: true,
            pinned: true,
            snap: false,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'Estadísticas',
                style: germanicobco,
              ),
              background: Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: Image.asset(
                  'lib/assets/venados.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SliverFillRemaining(
              child: Center(
            child: Text(
              'Stadísticas',
              style: germanicogdebold,
            ),
          )),
        ],
      ),
    );
  }
}
