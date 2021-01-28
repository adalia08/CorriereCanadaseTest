import 'package:http/http.dart';
import 'package:easy_web_view/easy_web_view.dart';
import 'dart:convert';

class PullCat{

  // String title; // location for UI
  // String intro;
  // String content; // temp in the location
  String cat; //location url for api endpoint

  PullCat();

  Future<void> getData() async{
    try {
      Response response1 = await get(
          'http://www2.corriere.com/get.php');
      cat = response1.body;
      //  String beep = response1.body.toString();
      print(cat);
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
      cat = 'error';
      //   weather = 'error';
    }
  }
}