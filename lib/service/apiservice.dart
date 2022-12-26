import 'dart:convert';
import 'dart:developer';


import 'package:http/http.dart' as http;
import 'package:marlo_project/constant/apiconstant.dart';
import 'package:marlo_project/models/balance.dart';
import 'package:marlo_project/models/transfers.dart';
import 'package:marlo_project/token/refresh_token.dart';
import 'package:shared_preferences/shared_preferences.dart';



class ApiService {
  Future<BalanceModel?>getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl +"balance");
      // + ApiConstants.userEndpoint);
     
      var response = await http.get(url,
      headers: { 
       'authtoken' :'eyJhbGciOiJSUzI1NiIsImtpZCI6ImFmZjFlNDJlNDE0M2I4MTQxM2VjMTI1MzQwOTcwODUxZThiNDdiM2YiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vbWFybG8tYmFuay1kZXYiLCJhdWQiOiJtYXJsby1iYW5rLWRldiIsImF1dGhfdGltZSI6MTY3MTk4NDQ4MSwidXNlcl9pZCI6InVMbTgwQ1NUU1RoRm1jbG0yZ1NTVnlrMlh2ZDIiLCJzdWIiOiJ1TG04MENTVFNUaEZtY2xtMmdTU1Z5azJYdmQyIiwiaWF0IjoxNjcxOTg0NDgxLCJleHAiOjE2NzE5ODgwODEsImVtYWlsIjoiYnByQG1hcmxvLm9ubGluZSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwiZmlyZWJhc2UiOnsiaWRlbnRpdGllcyI6eyJlbWFpbCI6WyJicHJAbWFybG8ub25saW5lIl19LCJzaWduX2luX3Byb3ZpZGVyIjoicGFzc3dvcmQifX0.nejWSwTp80bbxuPHQwxJAWPZ3tNYXSZtZ_RghnTHm2VywoTPoLtmyQ38_YHYAOrIcWE7n4O9RCxJwikhxYPbxlh3F8K0q7H3OvhvCqNs6K4fdSw9KR7jhDoNhnR5ooCx2i2DmbuS3tEbmgNTSAn-7yC7ySkvpyMVHqC1uYYLYk3RzO4Fp9V4V6pu1z9wJ39EXdx5Ec3LIFCyUjDCZ9BStPXHIeauyQWmhkOGIvNurRs6K6Xj859w_5iTbLgTBDkCqUw8omVT53PgaIvxqoM1SuwG9P1JfVZfF0jBYqke0rJC4ftMa-f0zjnDQFaKYeXxMD-h2mOjvyqIz1NFkifj3w'
      });
      print(response.statusCode);
      if (response.statusCode == 200) {
       print(response.body);
       var balanceData = balanceModelFromJson(response.body);
      
         //BalanceData _model =balanceDataFromJson(response.body);
        //  print(_model);
        // print("welcome");
         return balanceData;
   
      }
     
    } catch (e) {
      print('caught error$e');
      //log(e.toString());
    }
  }

  getValues() {}

}

// class TransferService {
//   Future<TransferModel?> getValues() async {
//     try {
//       var url = Uri.parse(ApiConstants.baseUrl +"transfers");
//       //+ ApiConstants.usersEndpoint);
//       var response = await http.get(url,
//       headers: {
//         'authtoken':'eyJhbGciOiJSUzI1NiIsImtpZCI6ImFmZjFlNDJlNDE0M2I4MTQxM2VjMTI1MzQwOTcwODUxZThiNDdiM2YiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vbWFybG8tYmFuay1kZXYiLCJhdWQiOiJtYXJsby1iYW5rLWRldiIsImF1dGhfdGltZSI6MTY3MTgwMTk1NywidXNlcl9pZCI6InVMbTgwQ1NUU1RoRm1jbG0yZ1NTVnlrMlh2ZDIiLCJzdWIiOiJ1TG04MENTVFNUaEZtY2xtMmdTU1Z5azJYdmQyIiwiaWF0IjoxNjcxODAxOTU3LCJleHAiOjE2NzE4MDU1NTcsImVtYWlsIjoiYnByQG1hcmxvLm9ubGluZSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwiZmlyZWJhc2UiOnsiaWRlbnRpdGllcyI6eyJlbWFpbCI6WyJicHJAbWFybG8ub25saW5lIl19LCJzaWduX2luX3Byb3ZpZGVyIjoicGFzc3dvcmQifX0.UO887uIbVsm0ixen3TYTwgXasPnBlrpRlaDjoeGt5mHyn-Xadsk7dSizVcDWOosTmrgW-lLRsjdYDZBoDMfoHSkF9G36-83eiN3nRUUB3n6vPhwmtgFdpWXhaDGDMdn8qT4g6h67GD0WZKG51tQsulPoD2RZEjueAjvbQd1sbppbB4YYaljw0oBiWNGtBOjXUWGclP8uX_-RSwWpYrVxERQOoLdqyW3q19qshJCEHGwaemFUHg0f4wY-H0ifgkT-YwW9qSU_VTu4gkyjuamu7T4VuC5meAJ_yhH7bOCZPRLzVWRv-yRvyykYmIHHReDYOclCSpgnSChYVYS0fUzjow'
//       });
//       print(response.statusCode);
//       if (response.statusCode == 200) {
       
//        print(response.body);
//        var transferData = transferModelFromJson(response.body);
//        return transferData;
//         // List<TransfersModel> _models = balanceModelFromJson(response.body) as List<TransfersModel>;
//         //  print(_models);
//         // print("welcome");
//         // return _models;
   
//       }
     
//     } catch (e) {
//       log(e.toString());
//     }
//   }
// }