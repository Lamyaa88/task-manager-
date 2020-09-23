import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() async{
  var myStoredData = await readData();

  if(myStoredData != null){
    print(myStoredData);
  }

  runApp( MaterialApp(
    home:  Home() ,
    title: 'notes' ,
  ));
}

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}

class HomeState extends State<Home>{

  TextEditingController myController1 =  TextEditingController();
  TextEditingController myController2 =  TextEditingController();
  TextEditingController myController3 =  TextEditingController();
  TextEditingController myController4 =  TextEditingController();
  TextEditingController myController5=  TextEditingController();




  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: Colors.blueGrey,
      body:
        ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 55.9),
              margin: EdgeInsets.all(22.2),
              child:  Column(
                children: <Widget>[

                  Card(

                    color: Colors.blue,
                    child: Container(
                      margin: EdgeInsets.only(left: 20
                        ,),child:    TextField(

                      controller: myController1,
                      decoration: InputDecoration(
                        labelText: 'task(1)',

                      ),
                    ) ,
                    ),
                  ),

                  Card(

                    color: Colors.blue,
                    child: Container(
                      margin: EdgeInsets.only(left: 20
                        ,),child:    TextField(

                      controller: myController2,
                      decoration: InputDecoration(
                        labelText: 'task(2)',

                      ),
                    ) ,
                    ),
                  ),
                  Card(

                    color: Colors.blue,
                    child: Container(
                      margin: EdgeInsets.only(left: 20
                        ,),child:    TextField(

                      controller: myController3,
                      decoration: InputDecoration(
                        labelText: 'task(3)',

                      ),
                    ) ,
                    ),
                  ), Card(

                    color: Colors.blue,
                    child: Container(
                      margin: EdgeInsets.only(left: 20
                        ,),child:    TextField(

                      controller: myController4,
                      decoration: InputDecoration(
                        labelText: 'task(4)',

                      ),
                    ) ,
                    ),
                  ), Card(

                    color: Colors.blue,
                    child: Container(
                      margin: EdgeInsets.only(left: 20
                        ,),child:    TextField(

                      controller: myController5,
                      decoration: InputDecoration(
                        labelText: 'task(5)',

                      ),
                    ) ,
                    ),
                  ),


                  Padding(padding: EdgeInsets.only(top: 12.0)),
                  RaisedButton(onPressed: (){
                    writeData(myController1.text);
                    writeData(myController2.text);
                    writeData(myController3.text);
                    writeData(myController4.text);
                    writeData(myController5.text);

                  },color: Colors.blue,
                    child:Text(
                      'Save',
                      style: TextStyle(
                        fontSize: 22.2,
                        color: Colors.black54,
                      ),),
                  ),

                  Padding(padding: EdgeInsets.only(top: 12.0)),
                  FutureBuilder(
                      future: readData(),
                      builder: (BuildContext context , AsyncSnapshot<String> data){
                        if(data.hasData != null){
                          return  Text(
                            '${data.data.toString()}',
                            style:  TextStyle(
                              fontSize: 52.2,
                              color: Colors.blue,
                            ),);
                        }else{
                          return  Text(
                            'There is no data !',
                            style:  TextStyle(
                              fontSize: 22.2,
                              color: Colors.blue,
                            ),);
                        }

                      }
                  ),
                  Padding(padding: EdgeInsets.only(top: 12.0)),
                  FutureBuilder(
                      future: readData(),
                      builder: (BuildContext context , AsyncSnapshot<String> data2){
                        if(data2.hasData != null){
                          return  Text(
                            '${data2.data.toString()}',
                            style:  TextStyle(
                              fontSize: 52.2,
                              color: Colors.blue,
                            ),);
                        }else{
                          return  Text(
                            'There is no data !',
                            style:  TextStyle(
                              fontSize: 22.2,
                              color: Colors.blue,
                            ),);
                        }

                      }
                  ),
                  Padding(padding: EdgeInsets.only(top: 12.0)),
                  FutureBuilder(
                      future: readData(),
                      builder: (BuildContext context , AsyncSnapshot<String> data3){
                        if(data3.hasData != null){
                          return  Text(
                            '${data3.data.toString()}',
                            style:  TextStyle(
                              fontSize: 52.2,
                              color: Colors.blue,
                            ),);
                        }else{
                          return  Text(
                            'There is no data !',
                            style:  TextStyle(
                              fontSize: 22.2,
                              color: Colors.blue,
                            ),);
                        }

                      }
                  ),
                  Padding(padding: EdgeInsets.only(top: 12.0)),
                  FutureBuilder(
                      future: readData(),
                      builder: (BuildContext context , AsyncSnapshot<String> data4){
                        if(data4.hasData != null){
                          return  Text(
                            '${data4.data.toString()}',
                            style:  TextStyle(
                              fontSize: 52.2,
                              color: Colors.blue,
                            ),);
                        }else{
                          return  Text(
                            'There is no data !',
                            style:  TextStyle(
                              fontSize: 22.2,
                              color: Colors.blue,
                            ),);
                        }

                      }
                  ),
                  Padding(padding: EdgeInsets.only(top: 12.0)),
                  FutureBuilder(
                      future: readData(),
                      builder: (BuildContext context , AsyncSnapshot<String> data5){
                        if(data5.hasData != null){
                          return  Text(
                            '${data5.data.toString()}',
                            style:  TextStyle(
                              fontSize: 52.2,
                              color: Colors.blue,
                            ),);
                        }else{
                          return  Text(
                            'There is no data !',
                            style:  TextStyle(
                              fontSize: 22.2,
                              color: Colors.blue,
                            ),);
                        }

                      }
                  )


                ],
              ),
            ),
          ],
        )

    );
  }

}

Future<String> get localPath async{
  final path = await getApplicationDocumentsDirectory();
  return path.path;
}

Future<File> get localFile  async{
  final file = await localPath;
  return new File('$file/data.txt');
}


Future<File>   writeData(String value)  async{
  final file = await localFile;
  return file.writeAsString('$value');
}

Future<String> readData() async{

  try{
    final file = await localFile;
    String data = await file.readAsString();
    return data;
  }catch(e){
    return 'error: empty file';
  }

}