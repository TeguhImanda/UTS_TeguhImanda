import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  ListScreen({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final TextEditingController _searchController = new TextEditingController();
  final List<String> _originList = [
    "Instax Mini Mint 7+",
    "Instax Mini Blue 7+",
    "Instax Mini Choral 7+",
    "Instax Mini Pink 7+",
    "Instax Mini Lavender 7+",
  ];
  List<String> _filteredList = [];
  String _keyword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Image.asset(
          'assets/fujifilmbanner.png',
          width: 100,
        ),
        actions: [
          RawMaterialButton(
            onPressed: () {},
            elevation: 2.0,
            fillColor: Colors.black,
            child: Icon(
              Icons.shopping_bag_outlined,
              size: 24.0,
            ),
            padding: EdgeInsets.all(10.0),
            shape: CircleBorder(),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              color: Color(0xFF70b1a1),
              child: Image.asset('assets/InstaxMini7plus_Mint_R.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150, 
              color: Color(0xFF77a0c6),
              child: Image.asset('assets/InstaxMini7plus_Blue_R.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              color: Color(0xFFb0463c),
              child: Image.asset('assets/InstaxMini7plus_Choral_R.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              color: Color(0xFF855f8c),
              child: Image.asset('assets/InstaxMini7plus_Lavender_R.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              color: Color(0xFFfcf9496),
              child: Image.asset('assets/InstaxMini7plus_Pink_R.png'),
            ),
          ),
        ],
      ),
    );
  }
}
