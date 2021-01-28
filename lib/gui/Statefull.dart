import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Statefull extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new home();
  }

}

class home extends State<Statefull>
{

  bool value1= true;
  bool value2= false;
  bool value3= true;
  bool value4= false;
  bool value5= true;

  void onchangevalue1(bool value)
  {
    setState(() {
      value1=value;
    });
  }

  void onchangevalue2(bool value)
  {
    setState(() {
      value2=value;
    });
  }

  void onchangevalue3(bool value)
  {
    setState(() {
      value3=value;
    });
  }

  void onchangevalue4(bool value)
  {
    setState(() {
      value4=value;
    });
  }

  void onchangevalue5(bool value)
  {
    setState(() {
      value5 =value;
    });
  }

  String name =" ";
  void onchangevalue( String value)
  {
    setState(() {
         name= "on change  $value";
    });
  }

  void onsubmitvalue( String value)
  {
    setState(() {
         name= "on submuit  $value";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('StatefullApp'),
      ),

      body: new Container(
        padding: new  EdgeInsets.all(33.2),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(' $name'),
            new TextField(
              autocorrect: true,
              autofocus: true,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                icon: new Icon(Icons.person_add),
                hintText: 'hi',
                labelText: 'your name',
              ),
              onChanged: onchangevalue,
              onSubmitted: onsubmitvalue,
            ),
            new Checkbox(value: value1, onChanged: onchangevalue1),
            new Checkbox(value: value2, onChanged: onchangevalue2),
            new CheckboxListTile(value: value3, onChanged: onchangevalue3 ,
              title: new Text("how are you"), activeColor: Colors.deepPurple,
              subtitle: new Text("sub title"),
            secondary: new Icon(Icons.directions_bus),
            ),
            new  Switch(value: value4, onChanged: onchangevalue4),
            new SwitchListTile(value: value5, onChanged: onchangevalue5,
              secondary: new Icon(Icons.add_location_alt),
            title: new Text("switch btn location")
            ),
          ],
        ),
      ),

      drawer: new Drawer(
        child: new Container(
          padding: new EdgeInsets.all(12),
          child:  new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new FlatButton(onPressed: ()=> Navigator.pop(context), child: new Text("close")),
              new Text(' $name'),
              new TextField(
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  icon: new Icon(Icons.person_add),
                  hintText: 'hi',
                  labelText: 'your name',
                ),
                onChanged: onchangevalue,
                onSubmitted: onsubmitvalue,
              ),
              new Checkbox(value: value1, onChanged: onchangevalue1),
              new Checkbox(value: value2, onChanged: onchangevalue2),
              new CheckboxListTile(value: value3, onChanged: onchangevalue3 ,
                title: new Text("how are you"), activeColor: Colors.deepPurple,
                subtitle: new Text("sub title"),
                secondary: new Icon(Icons.directions_bus),
              ),
              new  Switch(value: value4, onChanged: onchangevalue4),
              new SwitchListTile(value: value5, onChanged: onchangevalue5,
                  secondary: new Icon(Icons.add_location_alt),
                  title: new Text("switch btn location")
              ),
            ],
          ),
        ),
      ),
    );
  }

}