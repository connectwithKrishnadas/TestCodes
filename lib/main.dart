import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: floatingSearchBar11(),
    );
  }
}

class floatingSearchBar11 extends StatefulWidget {
  const floatingSearchBar11({Key? key}) : super(key: key);

  @override
  _floatingSearchBar11State createState() => _floatingSearchBar11State();
}

class _floatingSearchBar11State extends State<floatingSearchBar11> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'Assets/abcd.jpg',
            height: 500,
            width: 500,
            fit: BoxFit.cover,
          ),
          searchBarUI()
        ],
      )),
    ));
  }

  Widget searchBarUI() {
    return FloatingSearchBar(
      backgroundColor: Colors.black,
      hint: 'search....',
      openAxisAlignment: 0.0,
      width: 500,
      height: 48,
      axisAlignment: 0.0,
      elevation: 4.0,
      onQueryChanged: (query) {},
      automaticallyImplyDrawerHamburger: true,
      transitionCurve: Curves.easeInOut,
      transitionDuration: Duration(milliseconds: 500),
      transition: CircularFloatingSearchBarTransition(),
      debounceDelay: Duration(milliseconds: 500),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: Icon(Icons.search_rounded),
            onPressed: () => {},
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        )
      ],
      builder: (context, transiton) {
        return ClipRect(
          child: Material(
            color: Colors.black,
            child: Container(
              height: 200,
              color: Colors.black,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'LP Shirts',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'In Mens Shirts',
                      style: TextStyle(color: Colors.blue),
                    ),
                    trailing: Icon(Icons.replay_outlined),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
