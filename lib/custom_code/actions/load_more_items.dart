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

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase/supabase.dart';

int pageNumber = 1;
int pageSize = 5;
List<dynamic> items = [];

Future<void> loadMoreItems() async {
  final supabase = SupaFlow.client;

  final response = await supabase
      .from('gift_guide')
      .select('*')
      .range(pageNumber * pageSize, (pageNumber + 1) * pageSize - 1);

  // If there are no more items, return
  if (response.isEmpty) {
    return;
  }

  items.addAll(response);
  pageNumber++; // Increment page number for next pagination
  // Update UI to reflect new items
}
