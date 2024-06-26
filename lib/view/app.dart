
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nfc_app_prototype/models/eclothes.dart';
import 'package:nfc_app_prototype/view/dashboard.dart';
import 'package:nfc_app_prototype/view/read_tag.dart';
import 'package:nfc_app_prototype/view/user.dart';
import 'package:nfc_app_prototype/view/wardrobe/eclothes_detail.dart';
import 'package:nfc_app_prototype/view/wardrobe/gallery.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _Home(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal, brightness: Brightness.light),
        useMaterial3: true
      ),      
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal, brightness: Brightness.light),
        useMaterial3: true
      ),
      onGenerateRoute: (settings) {    
        if (settings.name == '/wardrobe/detail') {
          final eclothes = settings.arguments as EClothes;

          return MaterialPageRoute(
            builder: (context) {
              return EclothesDetailPage(eclothes);
            }
          );
        }

        return null;
      },
      routes: <String, WidgetBuilder> {
        '/wardrobe': (BuildContext context) =>  WardrobeGallery(),
      },
    );
  }
}

class _Home extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<_Home> {
  
  int _currentPageIndex = 1;

  final PageController _pgCtrl = PageController(initialPage: 1); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pgCtrl,
        children: const [ReadTagView(), DashboardView(), UserView()],
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.orange,
        color: Colors.teal,
        animationDuration: const Duration(milliseconds: 300),
        items: const <Widget>[
          Icon(Icons.fiber_new_rounded, size: 26, color: Colors.white,),
          Icon(Icons.home, size: 26, color: Colors.white,),
          Icon(Icons.person, size: 26, color: Colors.white,),
        ],
        onTap: (pageIdx) {
          _pgCtrl.animateToPage(pageIdx, duration: const Duration(milliseconds: 300), curve: Curves.bounceIn);
        },
        index: _currentPageIndex,
      ),
    );
  }

}