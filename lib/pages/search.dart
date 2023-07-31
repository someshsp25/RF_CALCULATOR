import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     'Search',
      //     style: TextStyle(
      //       fontSize: 30,
      //       fontWeight: FontWeight.w400,
      //     ),
      //   ),
      // ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            SizedBox(height: 50,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15 , vertical: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search files here...',
                        hintStyle: TextStyle(fontSize: 16),
                        labelText: 'Search',
                        focusColor: Colors.blue,
                        disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red , width: 5)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white , width: 5)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue , width: 5)),
                      ),
                      controller: searchController,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue,
                    ),
                    child: IconButton(
                      onPressed: () {
                        // Enter search method here
                      },
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
