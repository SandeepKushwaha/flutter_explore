import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class ImagePageFragment extends StatefulWidget {
  @override
  _ImagePageFragmentState createState() => _ImagePageFragmentState();
}

class _ImagePageFragmentState extends State<ImagePageFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Images Widget Exmples',
                style: Theme.of(context).textTheme.headline5.apply(
                  fontStyle: FontStyle.normal,
                  fontSizeDelta: 1.5,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dotted,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              kIsWeb 
              ? Image(
                image: AssetImage('images/anim_jerry.png'),
                height: 480.0,
                width: 480.0,
              ) 
              : Image(
                image: AssetImage('assets/images/anim_jerry.png'),
                height: 240.0,
                width: 240.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: kIsWeb ? MediaQuery.of(context).size.width * .6 : MediaQuery.of(context).size.width * .98,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).focusColor,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Text('Asset Image', textAlign: TextAlign.center,),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Image.network('https://media4.s-nbcnews.com/j/newscms/2016_36/1685951/ss-160826-twip-05_8cf6d4cb83758449fd400c7c3d71aa1f.fit-760w.jpg'),
              ),
              Container(
                width: kIsWeb ? MediaQuery.of(context).size.width * .6 : MediaQuery.of(context).size.width * .98,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).focusColor,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Text('Network Image', textAlign: TextAlign.center,),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}