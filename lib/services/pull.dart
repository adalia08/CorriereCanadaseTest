import 'package:http/http.dart';
import 'package:easy_web_view/easy_web_view.dart';
import 'dart:convert';

class Pull{

  // String title; // location for UI
  // String intro;
  // String content; // temp in the location
  String photo; //location url for api endpoint

  Pull();

  Future<void> getData() async{
     try {
      Response response1 = await get(
          'http://www2.corriere.com/get.php');
      photo = response1.body;
    //  String beep = response1.body.toString();
      print(photo);
    //   Map celc = data['main'];
    //   temp = celc['temp'].toString();
    //
    //
    //   List top = data['weather'];
    //   String ad = top[0].toString();
    //   List<String> be = ad.split(',');
    //   String ne =be[1];
    //   List<String> boo = ne.split(' ');
    //   weather = boo[2];
    //
     }catch(e){
       print('caught error $e');
       photo = 'error';
    //   weather = 'error';
      }
   }
}