// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase/supabase.dart';

// final client = SupabaseClient(
//   'https://aemwcklkqbmkkgupkmoo.supabase.co',
//   'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFlbXdja2xrcWJta2tndXBrbW9vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDczOTU3NjcsImV4cCI6MjAyMjk3MTc2N30.JV1I3DiLkjKQ0LVyI90V3lAKYMO7whqBAliilQTQtc4',
// );

Future<List<dynamic>> fetchPaginatedItem(int pageNumber) async {
  final supabase = SupaFlow.client;
  int pageSize = 3;
  final response = await supabase
      .from('gift_guide')
      .select('*')
      .order('title', ascending: true)
      .range(0, (pageNumber + 1) * pageSize - 1);

  // Check for errors if necessary
  // if (response.error != null) {
  //   throw response.error!;
  // }
  return response;
}
