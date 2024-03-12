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

Future<List<dynamic>> fetchPaginatedItem(int pageNumber) async {
  final supabase = SupaFlow.client;
  int pageSize = 5;
  final response = await supabase
      .from('gift_guide')
      .select('*')
      .order('title', ascending: true)
      .range(0, (pageNumber + 1) * pageSize - 1);

  List<dynamic> filteredData =
      response.where((item) => item['created_by'] == null).toList();

  return filteredData;
}
