import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
class CallApi{
    dynamic url = 'http://206.189.92.79/api/';
    postData(data, apiUrl) async {
        var fullUrl =  Uri.parse(url + apiUrl+ await _getToken()) ;
        return await http.post(
            fullUrl, 
            body: jsonEncode(data), 
            headers: _setHeaders()
        );
    }
    getData(apiUrl) async {
       var fullUrl =  Uri.parse(url + apiUrl+ await _getToken()) ;
       return await http.get(
         fullUrl, 
         headers: _setHeaders()
       );
    }


    _setHeaders() => {
        'Content-type' : 'application/json',
        'Accept' : 'application/json',
    };
    
    _getToken() async {
        SharedPreferences localStorage = await SharedPreferences.getInstance();
        var token = localStorage.getString('token');
        return '?token=$token';
    }
}