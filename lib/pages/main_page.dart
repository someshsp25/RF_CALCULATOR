import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:rfcalculator/pages/search.dart';
import 'package:rfcalculator/widgets/widgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RF Calculator',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
        ),
        elevation: 10,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                // next screen
                nextScreen(context, SearchPage());
              },
              icon: Icon(
                Icons.search,
              ),
          ),
        ],
      ),
      body: fileList(),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22),
        backgroundColor: Colors.blue,
        visible: true,
        curve: Curves.bounceIn,
        children: [
          SpeedDialChild(
            onTap: () {
              // open camera
            },
            child: Icon(
              Icons.camera,
              color: Colors.white,
            ),
            backgroundColor: Colors.blue,
          ),
          SpeedDialChild(
            onTap: () {
              // upload files
            },
            child: Icon(
              Icons.upload,
              color: Colors.white,
            ),
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
  fileList(){
    return Container();
  }
}
