import 'package:flutter/material.dart';
import 'package:venados/home.dart';
import 'package:venados/stats.dart';
import 'package:venados/utils/colors.dart';
import 'package:venados/utils/textstyles.dart';

class Players extends StatefulWidget {
  @override
  _PlayersState createState() => _PlayersState();
}

class _PlayersState extends State<Players> {
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
                Navigator.pop(context);
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
                'Jugadores',
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
              'Players',
              style: germanicogdebold,
            ),
          )),
        ],
      ),
    );
  }
}
