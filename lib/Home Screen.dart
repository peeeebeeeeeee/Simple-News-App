import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';
import 'News Cards.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({@required this.details});
  final details;
  static const String id='HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var details;
  Widget newsCatalogue;

  @override
  void initState(){
    super.initState();
    print(widget.details);
    newsCatalogue=productList(widget.details);
  }

  ListView productList(dynamic apiData){
    List<NewsDesign> newsCatalogue = [];
    int i=0;
    int numOfResults=apiData["num_results"];
    while(i<numOfResults){
      print(i);
      final newsDesigns = NewsDesign(details:apiData['results'][i]);
      newsCatalogue.add(newsDesigns);
      i++;
    }
    return ListView(
//      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      children: newsCatalogue,
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: bWhite,
      appBar:AppBar(
        leading: Icon(
            CupertinoIcons.home,
            color: bBlack,
        ),
        backgroundColor: bWhite,
        title: Text(
          'Top Stories on New York Times',
          style: bTitle,
          textAlign: TextAlign.left,
        ),
      ),
      body: Container(
        child:newsCatalogue,
      ),
    );
  }
}
