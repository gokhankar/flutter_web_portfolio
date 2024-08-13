// import 'dart:convert';
// import 'dart:developer';
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';

// class NetworkHelper {
//  static Future postJsonWithoutHeaderToken(
//       {required String url,
//       required String jsonData,
//       }) async {
//     var dio = Dio();
//     // dio.options.headers["Authorization"] = "Bearer $token";
//     dio.options.headers['content-Type'] = 'application/json';
//     // dio.options.headers["accept-Encoding"] = "gzip, deflate, br";
//     // dio.options.headers["connection"] = "keep-alive";
//     try {
//       final response = await dio.post(
//         url,
//         data: jsonData,
//       );
//       if (kDebugMode) {
//         print('postFileStatusCode:  ${response.statusCode}');
//       }

//       if (kDebugMode) {
//         log('postFileDatas:  ${json.encode(response.data)}');
//       }

//       if (response.statusCode == 200) {
//         return response.data;
//       }
//     } on DioException catch (e) {
//       if (kDebugMode) {
//         print('RESPONSE DATA: ${e.response!.data}, STATUSCODE: $e');
//       }
//       return e.response!.data;
//     }
//   }

 

//   static Future postWithHeaderToken(
//       {required String url, required String token}) async {
//     var dio = Dio();
//     dio.options.headers["Authorization"] = "Bearer $token";
//     dio.options.headers['content-Type'] = 'application/json';
//     // dio.options.headers["accept-Encoding"] = "gzip, deflate, br";
//     // dio.options.headers["connection"] = "keep-alive";
//     try {
//       final response = await dio.post(
//         url,
//       );
//       if (kDebugMode) {
//         log('postFileDatas:  ${json.encode(response.data)}');
//       }
//       log('postFileStatusCode:  ${response.statusCode}');
//       if (response.statusCode == 200) {
//         return response.data;
//       }
//     } on DioError catch (e) {
//       log('STATUSCODE: $e');
//       if (kDebugMode) {
//         print('ERROR DATA: ${e.response!.data}');
//       }
//       return e.response!.data;
//     }
//   }

//   static Future putWithHeaderToken(
//       {required String url, required String token}) async {
//     var dio = Dio();
//     dio.options.headers["Authorization"] = "Bearer $token";
//     dio.options.headers['content-Type'] = 'application/json';
//     // dio.options.headers["accept-Encoding"] = "gzip, deflate, br";
//     // dio.options.headers["connection"] = "keep-alive";
//     try {
//       final response = await dio.put(
//         url,
//       );
//       if (kDebugMode) {
//         log('postFileDatas:  ${json.encode(response.data)}');
//       }
//       log('postFileStatusCode:  ${response.statusCode}');
//       if (response.statusCode == 200) {
//         return response.data;
//       }
//     } on DioError catch (e) {
//       log('STATUSCODE: $e');
//       if (kDebugMode) {
//         print('ERROR DATA: ${e.response!.data}');
//       }
//       return e.response!.data;
//     }
//   }

//   static Future getWithHeaderToken(
//       {required String url, required String token}) async {
//     var dio = Dio();
//     dio.options.headers["Authorization"] = "Bearer $token";
//     dio.options.headers['content-Type'] = 'application/json';
//     // dio.options.headers["accept-Encoding"] = "gzip, deflate, br";
//     // dio.options.headers["connection"] = "keep-alive";
//     try {
//       final response = await dio.get(url);
//       if (kDebugMode) {
//         log('postFileDatadddd:  ${json.encode(response.data)}');
//       }
//       log('postFileStatusCode:  ${response.statusCode}');
//       if (response.statusCode == 200) {
//         return response.data;
//       }
//     } on DioError catch (e) {
//       if (kDebugMode) {
//         print('RESPONSE DATA: ${e.response!.data} , STATUSCODE: $e');
//       }
//       return e.response!.data;
//     }
//   }

//   static Future postFormDataWithToken(
//       {required String url,
//       required FormData formData,
//       required String token}) async {
//     var dio = Dio();

//     dio.options.headers["Authorization"] = "Bearer $token";

//     var response;
//     try {
//       response = await dio.post(
//         url,
//         data: formData,

//         //  options: Options(contentType: Headers.formUrlEncodedContentType),
//       );
//       log('postFileStatusCode:  ${response.statusCode}');
//       log("postFileData:  ${response.data}");

//       if (response.statusCode == 200) {
//         return response.data;
//       }
//     } on DioError catch (e) {
//       if (kDebugMode) {
//         print('RESPONSE DATA: ${e.response!.data}, STATUSCODE: $e');
//       }
//       return e.response!.data;
//     }
//   }

//   static Future getWithHeaderTokenWithParameters(
//       {required String url,
//       required Map<String, dynamic> parameters,
//       required String token}) async {
//     var dio = Dio();
//     dio.options.headers["Authorization"] = "Bearer $token";
//     dio.options.headers['content-Type'] = 'application/json';
//     // dio.options.headers["accept-Encoding"] = "gzip, deflate, br";
//     // dio.options.headers["connection"] = "keep-alive";
//     try {
//       final response = await dio.get(url, queryParameters: parameters);
//       if (kDebugMode) {
//         log('postFileDatadddd:  ${json.encode(response.data)}');
//       }
//       log('postFileStatusCode:  ${response.statusCode}');
//       if (response.statusCode == 200) {
//         return response.data;
//       }
//     } on DioError catch (e) {
//       if (kDebugMode) {
//         print('RESPONSE DATA: ${e.response!.data}, STATUSCODE: $e');
//       }
//       return e.response!.data;
//     }
//   }

//   static Future postWithHeaderTokenWithParameters(
//       {required String url,
//       required Map<String, dynamic> parameters,
//       required String token}) async {
//     var dio = Dio();
//     dio.options.headers["Authorization"] = "Bearer $token";
//     dio.options.headers['content-Type'] = 'application/json';
//     // dio.options.headers["accept-Encoding"] = "gzip, deflate, br";
//     // dio.options.headers["connection"] = "keep-alive";
//     try {
//       final response = await dio.post(url, queryParameters: parameters);
//       if (kDebugMode) {
//         log('postFileDatadddd:  ${json.encode(response.data)}');
//       }
//       log('postFileStatusCode:  ${response.statusCode}');
//       if (response.statusCode == 200) {
//         return response.data;
//       }
//     } on DioError catch (e) {
//       if (kDebugMode) {
//         print('RESPONSE DATA: ${e.response!.data}, STATUSCODE: $e');
//       }
//       return e.response!.data;
//     }
//   }

//   static Future postJsonWithHeaderToken(
//       {required String url,
//       required String jsonData,
//       required String token}) async {
//     var dio = Dio();
//     dio.options.headers["Authorization"] = "Bearer $token";
//     dio.options.headers['content-Type'] = 'application/json';
//     // dio.options.headers["accept-Encoding"] = "gzip, deflate, br";
//     // dio.options.headers["connection"] = "keep-alive";
//     try {
//       final response = await dio.post(
//         url,
//         data: jsonData,
//       );
//       if (kDebugMode) {
//         print('postFileStatusCode:  ${response.statusCode}');
//       }

//       if (kDebugMode) {
//         log('postFileDatas:  ${json.encode(response.data)}');
//       }

//       if (response.statusCode == 200) {
//         return response.data;
//       }
//     } on DioError catch (e) {
//       if (kDebugMode) {
//         print('RESPONSE DATA: ${e.response!.data}, STATUSCODE: $e');
//       }
//       return e.response!.data;
//     }
//   }

//   static Future putJsonWithHeaderToken(
//       {required String url,
//       required String jsonData,
//       required String token}) async {
//     var dio = Dio();
//     dio.options.headers["Authorization"] = "Bearer $token";
//     dio.options.headers['content-Type'] = 'application/json';
//     // dio.options.headers["accept-Encoding"] = "gzip, deflate, br";
//     // dio.options.headers["connection"] = "keep-alive";
//     try {
//       final response = await dio.put(
//         url,
//         data: jsonData,
//       );
//       if (kDebugMode) {
//         log('postFileDatas:  ${json.encode(response.data)}');
//       }
//       log('postFileStatusCode:  ${response.statusCode}');
//       if (response.statusCode == 200) {
//         return response.data;
//       }
//     } on DioError catch (e) {
//       if (kDebugMode) {
//         print('RESPONSE DATA: ${e.response!.data}, STATUSCODE: $e');
//       }
//       return e.response!.data;
//     }
//   }

//   static Future deleteWithHeaderToken(
//       {required String url, required String token}) async {
//     var dio = Dio();
//     dio.options.headers["Authorization"] = "Bearer $token";
//     dio.options.headers['content-Type'] = 'application/json';
//     // dio.options.headers["accept-Encoding"] = "gzip, deflate, br";
//     // dio.options.headers["connection"] = "keep-alive";
//     try {
//       final response = await dio.delete(
//         url,
//       );
//       if (kDebugMode) {
//         log('postFileDatas:  ${json.encode(response.data)}');
//       }
//       log('postFileStatusCode:  ${response.statusCode}');
//       if (response.statusCode == 200) {
//         return response.data;
//       }
//     } on DioError catch (e) {
//       if (kDebugMode) {
//         print('RESPONSE DATA: ${e.response!.data}, STATUSCODE: $e');
//       }
//       return e.response!.data;
//     }
//   }

//   static Future getBearerToken(
//       {required String url, required String basicToken}) async {
//     var dio = Dio();
//     dio.options.headers["Authorization"] = 'Basic $basicToken';
//     dio.options.headers['content-Type'] = 'application/json';
//     // dio.options.headers["accept-Encoding"] = "gzip, deflate, br";
//     // dio.options.headers["connection"] = "keep-alive";
//     final response = await dio.post(
//       url,
//     );
//     if (kDebugMode) {
//       log('postFileDatadddd:  ${json.encode(response.data)}');
//     }
//     log('postFileStatusCode:  ${response.statusCode}');
//     if (response.statusCode == 200) {
//       return response.data;
//     }
//   }

//   static Future refreshBearerToken(
//       {required String url,
//       required String jsonData,
//       required String basicToken}) async {
//     var dio = Dio();
//     dio.options.headers["Authorization"] = "Basic $basicToken";
//     dio.options.headers['content-Type'] = 'application/json';
//     // dio.options.headers["accept-Encoding"] = "gzip, deflate, br";
//     // dio.options.headers["connection"] = "keep-alive";
//     final response = await dio.post(
//       url,
//       data: jsonData,
//     );
//     if (kDebugMode) {
//       log('postFileDatas:  ${json.encode(response.data)}');
//     }
//     log('postFileStatusCode:  ${response.statusCode}');
//     if (response.statusCode == 200) {
//       return response.data;
//     }
//   }

//   static Future postFormData(
//       {required String url, required FormData formData}) async {
//     var dio = Dio();

//     try {
//       final response = await dio.post(
//         url,
//         data: formData,
//       );
//       if (kDebugMode) {
//         log('postFileDatas:  ${json.encode(response.data)}');
//       }
//       log('postFileStatusCode:  ${response.statusCode}');
//       if (response.statusCode == 200) {
//         return response.data;
//       }
//     } on DioError catch (e) {
//       if (kDebugMode) {
//         print('RESPONSE DATA: ${e.response!.data}, STATUSCODE: $e');
//       }
//       return e.response!.data;
//     }
//   }

//   static Future creditCardPayment(
//       {required String url,
//       required FormData formData,
//       required String secretKey}) async {
//     var dio = Dio();

//     dio.options.headers['Accept'] = 'application/json';
//     dio.options.headers['Content-type'] = 'application/json';
//     dio.options.headers["Authorization"] = 'Basic $secretKey';
//     // dio.options.headers["accept-Encoding"] = "gzip, deflate, br";
//     // dio.options.headers["connection"] = "keep-alive";

//     final response = await dio.post(
//       url,
//       data: formData,
//       //  queryParameters: parameters
//     );
//     if (kDebugMode) {
//       log('postFileDatadddd:  ${json.encode(response.data)}');
//     }
//     log('postFileStatusCode:  ${response.statusCode}');
//     if (response.statusCode == 200) {
//       return response.data;
//     }
//   }

//   static Future postJson(
//       {required String url, required String jsonData}) async {
//     var dio = Dio();
//     final response = await dio.post(
//       url,
//       data: jsonData,
//       options: Options(contentType: Headers.jsonContentType),
//     );
//     log('jsonPost Dataxx:  ${response.data}');
//     log('jsonPost StatusCode:  ${response.statusCode}');
//     if (response.statusCode == 200) {
//       return response.data;
//     }
//   }

//   static Future getWithoutToken({required String url}) async {
//     var dio = Dio();
//     final response = await dio.get(
//       url,
//     );
//     log("postFileData:  ${response.data}");
//     log('postFileStatusCode:  ${response.statusCode}');
//     if (response.statusCode == 200) {
//       return response.data;
//     }
//   }
// }
