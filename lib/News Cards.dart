import 'package:flutter/material.dart';
import 'package:news/Constants.dart';
import 'Constants.dart';
import 'WebView Screen.dart';


class NewsDesign extends StatelessWidget {
  NewsDesign({@required this.details,this.onPressed});
  final  details,onPressed;
  var author;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 15),
      child: MaterialButton(
        height: 100,
        onPressed:(){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>WebViewScreen(url: details['url'],title: details['title'],)),
          );
        },
        child: Material(
          elevation: 5.0,
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child:  Image.network(
                  details['multimedia'][0]['url'].toString(),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("${details['title']}",textAlign:TextAlign.left,style: bNewsHeading,),
                    Text(" ${details['byline']} ",textAlign:TextAlign.left,style: bNewsAuthorDates,),
                    Text("${details['abstract']}",textAlign:TextAlign.left,style: bNewsDescription,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

