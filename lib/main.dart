import 'package:BurcRehberi/burc_detay.dart';
import 'package:BurcRehberi/burc_liste.dart';
import "package:flutter/material.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Burç Rehberi",
      debugShowCheckedModeBanner: false,

      initialRoute: "/burcListesi",

      routes: {
        "/" : (context) => BurcListesi(),
        "/burcListesi" : (context) => BurcListesi()
      },

      onGenerateRoute: (RouteSettings settings){
        List<String> pathElemanlari = settings.name.split("/");  //slashlara göre parçalara bölünür
        if(pathElemanlari[1] == 'burcDetay'){
          return MaterialPageRoute(builder: (context) => BurcDetay(int.parse(pathElemanlari[2])));
        }
        return null;
      },

      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // home: BurcListesi() //route tanımlandıysa home kullanılmaz
    );
  }
}