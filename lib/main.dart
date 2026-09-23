import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:H(),debugShowCheckedModeBanner:false));
class H extends StatelessWidget{
Widget build(c)=>Scaffold(appBar:AppBar(title:Text('Duo Play')),body:Center(child:Column(mainAxisSize:MainAxisSize.min,children:[
ElevatedButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>T())),child:Text('Tic Tac Toe')),
SizedBox(height:10),
ElevatedButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>L())),child:Text('Ludo')),
SizedBox(height:10),
ElevatedButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>S())),child:Text('Snake Ladder')),
]))));}
class T extends StatefulWidget{State createState()=>TS();}
class TS extends State<T>{var b=List.filled(9,'');String w='';bool x=true;
Widget build(c)=>Scaffold(appBar:AppBar(title:Text(w==''?'Turn: ${x?'X':'O'}':w=='D'?'Draw':'Win: $w')),body:Column(children:[
Expanded(child:GridView.builder(padding:EdgeInsets.all(20),gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3),itemCount:9,itemBuilder:(c,i)=>GestureDetector(onTap:(){if(b[i]!=''||w!='')return;setState((){b[i]=x?'X':'O';var g=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]];for(var l in g){if(b[l[0]]!=''&&b[l[0]]==b[l[1]]&&b[l[0]]==b[l[2]])w=b[l[0
