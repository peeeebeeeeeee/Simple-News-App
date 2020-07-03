import 'package:flutter/material.dart';
import 'package:news/Constants.dart';
import 'Home Screen.dart';
import 'Networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingScreen extends StatefulWidget {
  static const String id = 'LoadingScreen';

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override

  void initState() {
    super.initState();
    getData();
  }

  Future<dynamic> fetchAPIdetails() async{
    NetworkHelper networkHelper=NetworkHelper(
      url: '$url$apiKEY',
    );
    var apiData= await networkHelper.getData();
    return apiData;
  }

  void getData() async{
    var apiData= await fetchAPIdetails();
    print(apiData['results'][0]);
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>HomeScreen(details:apiData)));
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitChasingDots(
          size:50.0,
          color: Colors.lightBlueAccent,
        ),
      ),
    );
  }
}
