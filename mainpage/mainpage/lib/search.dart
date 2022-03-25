import 'package:flutter/material.dart';
import 'package:mainpage/search1.dart';
import 'package:mainpage/search2.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Diseases and Pests',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This holds a list of fiction users
  // You can use data fetched from a database or a server as well
  final List<Map<String, dynamic>> _allSearch = [
    {"id": 1, "name": "Tungro disease"},
    {"id": 2, "name": "sheath blight"},
    {"id": 3, "name": "Brown spot "},
    {"id": 4, "name": "Bacterial blight"},
    {"id": 5, "name": "Rice blast"},
    {"id": 6, "name": "Rice hispa"},
    {"id": 7, "name": "Mealybug"},
    {"id": 8, "name": "Grasshopper"},
    {"id": 9, "name": "Armyworm"},
    {"id": 10, "name": "Ants"},
  ];



  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundSearch = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundSearch = _allSearch;
    super.initState();
  }
  void pickedSearch(index) async{
    if(index == 0){
      Navigator.push(context,
        MaterialPageRoute(builder: (context) => search1()),
      );
    }else if(index == 1){
      Navigator.push(context,
        MaterialPageRoute(builder: (context) => search2()),
      );
    }
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allSearch;
    } else {
      results = _allSearch
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundSearch = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diseases and Pests'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundSearch.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundSearch.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_foundSearch[index]["id"]),
                  color: Colors.greenAccent,
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    onTap: () {
                      pickedSearch(index);
                    },
                    leading: Text(
                      _foundSearch[index]["id"].toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                    title: Text(_foundSearch[index]['name'],
                      style: const TextStyle(fontSize: 30),),
                  ),
                ),
              )
                  : const Text(
                'No results found',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}