import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:rfcalculator/pages/main_page.dart';

import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loading();
  }
  void loading() async{
    await Future.delayed(Duration(seconds: 3));
    nextScreenReplace(context,MainPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SpinKitWaveSpinner(
              color: Colors.red,
              waveColor: Colors.blue,
              size: 75,
            ),
            SizedBox(height: 15,),
            Text(
              'Loading...',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
