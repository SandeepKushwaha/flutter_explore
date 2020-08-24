import 'package:flutter/material.dart';

class TextPageFragment extends StatefulWidget {
  @override
  _TextPageFragmentState createState() => _TextPageFragmentState();
}

class _TextPageFragmentState extends State<TextPageFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)), 
      ),
      width: MediaQuery.of(context).size.width * 98,
      height: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Text Widget Examples',
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
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Text Sample Left',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Text(
                  'Text Sample Center',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: Text(
                  'Text Sample Right',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Text Sample OverLine',
                  style: Theme.of(context).textTheme.bodyText1.apply(
                    decoration: TextDecoration.overline,
                    fontSizeFactor: 1.2,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Text Sample LineThrough',
                  style: Theme.of(context).textTheme.bodyText1.apply(
                    decoration: TextDecoration.lineThrough,
                    fontSizeFactor: 1.2,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Text Sample UnderLine',
                  style: Theme.of(context).textTheme.bodyText1.apply(
                    decoration: TextDecoration.underline,
                    fontSizeFactor: 1.2,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .98,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).focusColor,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Text(
                  'Long Text Exmple : \nA run of text with a single style.\n\nThe Text widget displays a string of text with single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.\n\nThe style argument is optional. When omitted, the text will use the style from the closest enclosing DefaultTextStyle. If the given style\'s TextStyle.inherit property is true (the default), the given style will be merged with the closest enclosing DefaultTextStyle. This merging behavior is useful, for example, to make the text bold while using the default font family and size.',
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Material Typography',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .98,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: Theme.of(context).focusColor,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('headline1', style: Theme.of(context).textTheme.headline1,),
                    Text('headline2', style: Theme.of(context).textTheme.headline2,),
                    Text('headline3', style: Theme.of(context).textTheme.headline3,),
                    Text('headline4', style: Theme.of(context).textTheme.headline4,),
                    Text('headline5', style: Theme.of(context).textTheme.headline5,),
                    Text('headline6', style: Theme.of(context).textTheme.headline6,),
                    Text('subtitle1', style: Theme.of(context).textTheme.subtitle1,),
                    Text('subtitle2', style: Theme.of(context).textTheme.subtitle2,),
                    Text('bodyText1', style: Theme.of(context).textTheme.bodyText1,),
                    Text('bodyText2', style: Theme.of(context).textTheme.bodyText2,),
                    Text('button', style: Theme.of(context).textTheme.button,),
                    Text('caption', style: Theme.of(context).textTheme.caption,),
                    Text('overline', style: Theme.of(context).textTheme.overline,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
