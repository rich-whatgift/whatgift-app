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

Future<List<dynamic>> giftsQueryOnCategory(int selectedCategoryId) async {
  // Add your function code here!
  try {
    final supabase = SupaFlow.client;

    final mainCategoryId = selectedCategoryId;

    final response = await supabase.rpc('get_all_subcategories', params: {
      'main_category_id': mainCategoryId,
    }).execute();

    if (response == null) {
      print('Subcategories: ${response.status}');
      return response.data;
    } else {
      print('Error: ${response.status}');
      return [];
    }
  } catch (e) {
    print('Exception: $e');
    return [];
  }
}
