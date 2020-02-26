import 'package:flutter/material.dart';
import 'package:link_app/theme/theme.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldstate =
      new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldstate,
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Drawer(
          child: Container(
            child: DrawerHeader(
              margin: EdgeInsets.zero,
                child: Stack(
              children: <Widget>[
                FittedBox(
                  fit: BoxFit.fill,
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/user_background.PNG',
                      fit: BoxFit.cover,
                    ),
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.50,
                  ),
                )
              ],
            )),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        leading: InkWell(
          onTap: () {
            print('taped...');
            _scaffoldstate.currentState.openDrawer();
          },
          child: Container(
            margin: EdgeInsets.only(left: 4),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: <Widget>[
                SizedBox(
                  height: 42,
                  width: 42,
                  child: Hero(
                    tag: 'user_profil',
                    child: ClipRRect(
                      child: Image.asset('assets/images/user_profil.jpg'),
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                ),
                Container(
                  child: Icon(Icons.menu),
                  margin: EdgeInsets.only(left: 24, top: 20),
                )
              ],
            ),
          ),
        ),
        actions: <Widget>[],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) => {
          setState(() {
            _currentIndex = index;
            _changePage(index);
          })
        },
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue[700],
        items: ItemBottomNavs.map((ItemBottomNav item) {
          return BottomNavigationBarItem(
              icon: Icon(
                item.iconData,
                color: DefaultTheme.ColorSecondaryAccent,
              ),
              title: Text(item.title),
              backgroundColor: item.color);
        }).toList(),
      ),
    );
  }

  _changePage(int index) {
    return null;
  }
}

class ItemBottomNav {
  final String title;
  final IconData iconData;
  final Color color;

  ItemBottomNav(this.title, this.iconData, this.color);
}

final List<ItemBottomNav> ItemBottomNavs = <ItemBottomNav>[
  ItemBottomNav('Home', Icons.home, DefaultTheme.ColorsBackgorund),
  ItemBottomNav('Mon réseau', Icons.people, DefaultTheme.ColorsBackgorund),
  ItemBottomNav(
      'Emplois', Icons.business_center, DefaultTheme.ColorsBackgorund),
  ItemBottomNav(
      'Publier', Icons.add_circle_outline, DefaultTheme.ColorsBackgorund),
  ItemBottomNav(
      'Notifications', Icons.notifications_none, DefaultTheme.ColorsBackgorund)
];
