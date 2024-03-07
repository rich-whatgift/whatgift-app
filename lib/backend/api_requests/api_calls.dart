import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SelectGiftGuideItemsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'SelectGiftGuideItems',
      apiUrl:
          'https://aemwcklkqbmkkgupkmoo.supabase.co/rest/v1/gift_guide?id=eq.1&select=*\'',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlbXdja2xrcWJta2tndXBrbW9vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDczOTU3NjcsImV4cCI6MjAyMjk3MTc2N30.JV1I3DiLkjKQ0LVyI90V3lAKYMO7whqBAliilQTQtc4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlbXdja2xrcWJta2tndXBrbW9vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDczOTU3NjcsImV4cCI6MjAyMjk3MTc2N30.JV1I3DiLkjKQ0LVyI90V3lAKYMO7whqBAliilQTQtc4',
        'Range': '0-9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SelectFilteredGiftGuideItemsCall {
  static Future<ApiCallResponse> call({
    String? query = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SelectFilteredGiftGuideItems',
      apiUrl:
          'https://aemwcklkqbmkkgupkmoo.supabase.co/rest/v1/gift_guide?${query}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlbXdja2xrcWJta2tndXBrbW9vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDczOTU3NjcsImV4cCI6MjAyMjk3MTc2N30.JV1I3DiLkjKQ0LVyI90V3lAKYMO7whqBAliilQTQtc4',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlbXdja2xrcWJta2tndXBrbW9vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDczOTU3NjcsImV4cCI6MjAyMjk3MTc2N30.JV1I3DiLkjKQ0LVyI90V3lAKYMO7whqBAliilQTQtc4',
        'Range': '0-9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
