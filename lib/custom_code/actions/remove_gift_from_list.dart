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

Future<bool> removeGiftFromList(int listID, int giftID, String userID) async {
  final supabase = SupaFlow.client;
  final response = await supabase
      .from('list_gift_guide')
      .delete()
      .eq('list_id', listID)
      .eq('gift_guide_id', giftID)
      .eq('user_id', userID);

  return true;

  // try {
  //   // Execute the deletion operation
  //   final response = await supabase
  //       .from('list_gift_guide')
  //       .delete()
  //       .eq('list_id', listID)
  //       .eq('gift_guide_id', giftID)
  //       .eq('user_id', userID);

  //   // Check if the deletion was successful
  //   if (response.error != null) {
  //     print(
  //         'Error occurred while removing gift from list: ${response.error!.message}');
  //     return false; // Return false to indicate failure
  //   } else {
  //     print('Gift successfully removed from the list');
  //     return true; // Return true to indicate success
  //   }
  // } catch (error) {
  //   print('Error occurred while removing gift from list: $error');
  //   return false; // Return false to indicate failure
  // }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
