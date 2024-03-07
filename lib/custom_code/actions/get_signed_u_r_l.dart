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

Future<String> getSignedURL(String uploadedURL) async {
  final supabase = SupaFlow.client;

  final String response =
      await supabase.storage.from('file').createSignedUrl(uploadedURL, 60);

  return response;
}
