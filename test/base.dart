import 'dart:async';
import 'package:chopper/chopper.dart';

class ResponseLoggingInterceptor implements Interceptor {
  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(
      Chain<BodyType> chain) async {
    // Access and print the raw response body (before conversion)
    final response = await chain.proceed(chain.request);
    // print(
    //     'Raw Response Body: ${response.bodyString}'); // This gives you the raw body

    // You can continue processing the response with the converter later
    return response;
  }
}
