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
  try {
    final supabase = SupaFlow.client;
    final mainCategoryId = selectedCategoryId;

    // Execute RPC to get all related category IDs
    final categoryResponse =
        await supabase.rpc('get_all_subcategories', params: {
      'main_category_id': mainCategoryId,
    }).execute();

    // Check for response data validity instead of directly checking an 'error' property
    if (categoryResponse.data == null || categoryResponse.data.isEmpty) {
      print('No categories found or error in fetching categories.');
      return [];
    }

    List<int> subcategoryIds = List<int>.from(categoryResponse.data);
    subcategoryIds.add(mainCategoryId); // Include main category

    // Assuming you've adjusted the approach to fetching gifts given the limitations
    // For demonstration, this step is simplified and needs adjustment
    final giftsResponse = await supabase
        .from('gift_guide')
        .select('*')
        // Directly using `in` for subqueries/joins might not be supported, adjust accordingly
        .execute();

    if (giftsResponse.data == null) {
      print('Error fetching gifts or no gifts found.');
      return [];
    }

    return giftsResponse.data;
  } catch (e) {
    print('Exception: $e');
    return [];
  }
}
