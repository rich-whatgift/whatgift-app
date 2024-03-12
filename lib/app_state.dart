import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_UserInfo')) {
        try {
          _UserInfo = jsonDecode(prefs.getString('ff_UserInfo') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _navSidebar = true;
  bool get navSidebar => _navSidebar;
  set navSidebar(bool _value) {
    _navSidebar = _value;
  }

  int _pageId = 0;
  int get pageId => _pageId;
  set pageId(int _value) {
    _pageId = _value;
  }

  bool _IsToggled = false;
  bool get IsToggled => _IsToggled;
  set IsToggled(bool _value) {
    _IsToggled = _value;
  }

  List<dynamic> _giftGuideInitialData = [];
  List<dynamic> get giftGuideInitialData => _giftGuideInitialData;
  set giftGuideInitialData(List<dynamic> _value) {
    _giftGuideInitialData = _value;
  }

  void addToGiftGuideInitialData(dynamic _value) {
    _giftGuideInitialData.add(_value);
  }

  void removeFromGiftGuideInitialData(dynamic _value) {
    _giftGuideInitialData.remove(_value);
  }

  void removeAtIndexFromGiftGuideInitialData(int _index) {
    _giftGuideInitialData.removeAt(_index);
  }

  void updateGiftGuideInitialDataAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _giftGuideInitialData[_index] = updateFn(_giftGuideInitialData[_index]);
  }

  void insertAtIndexInGiftGuideInitialData(int _index, dynamic _value) {
    _giftGuideInitialData.insert(_index, _value);
  }

  List<dynamic> _searchedResultList = [];
  List<dynamic> get searchedResultList => _searchedResultList;
  set searchedResultList(List<dynamic> _value) {
    _searchedResultList = _value;
  }

  void addToSearchedResultList(dynamic _value) {
    _searchedResultList.add(_value);
  }

  void removeFromSearchedResultList(dynamic _value) {
    _searchedResultList.remove(_value);
  }

  void removeAtIndexFromSearchedResultList(int _index) {
    _searchedResultList.removeAt(_index);
  }

  void updateSearchedResultListAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _searchedResultList[_index] = updateFn(_searchedResultList[_index]);
  }

  void insertAtIndexInSearchedResultList(int _index, dynamic _value) {
    _searchedResultList.insert(_index, _value);
  }

  List<dynamic> _choiceChipResultList = [];
  List<dynamic> get choiceChipResultList => _choiceChipResultList;
  set choiceChipResultList(List<dynamic> _value) {
    _choiceChipResultList = _value;
  }

  void addToChoiceChipResultList(dynamic _value) {
    _choiceChipResultList.add(_value);
  }

  void removeFromChoiceChipResultList(dynamic _value) {
    _choiceChipResultList.remove(_value);
  }

  void removeAtIndexFromChoiceChipResultList(int _index) {
    _choiceChipResultList.removeAt(_index);
  }

  void updateChoiceChipResultListAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _choiceChipResultList[_index] = updateFn(_choiceChipResultList[_index]);
  }

  void insertAtIndexInChoiceChipResultList(int _index, dynamic _value) {
    _choiceChipResultList.insert(_index, _value);
  }

  List<int> _myGiftList = [];
  List<int> get myGiftList => _myGiftList;
  set myGiftList(List<int> _value) {
    _myGiftList = _value;
  }

  void addToMyGiftList(int _value) {
    _myGiftList.add(_value);
  }

  void removeFromMyGiftList(int _value) {
    _myGiftList.remove(_value);
  }

  void removeAtIndexFromMyGiftList(int _index) {
    _myGiftList.removeAt(_index);
  }

  void updateMyGiftListAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _myGiftList[_index] = updateFn(_myGiftList[_index]);
  }

  void insertAtIndexInMyGiftList(int _index, int _value) {
    _myGiftList.insert(_index, _value);
  }

  List<dynamic> _AllMyLists = [];
  List<dynamic> get AllMyLists => _AllMyLists;
  set AllMyLists(List<dynamic> _value) {
    _AllMyLists = _value;
  }

  void addToAllMyLists(dynamic _value) {
    _AllMyLists.add(_value);
  }

  void removeFromAllMyLists(dynamic _value) {
    _AllMyLists.remove(_value);
  }

  void removeAtIndexFromAllMyLists(int _index) {
    _AllMyLists.removeAt(_index);
  }

  void updateAllMyListsAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _AllMyLists[_index] = updateFn(_AllMyLists[_index]);
  }

  void insertAtIndexInAllMyLists(int _index, dynamic _value) {
    _AllMyLists.insert(_index, _value);
  }

  bool _isFilterOn = false;
  bool get isFilterOn => _isFilterOn;
  set isFilterOn(bool _value) {
    _isFilterOn = _value;
  }

  List<dynamic> _filteredList = [];
  List<dynamic> get filteredList => _filteredList;
  set filteredList(List<dynamic> _value) {
    _filteredList = _value;
  }

  void addToFilteredList(dynamic _value) {
    _filteredList.add(_value);
  }

  void removeFromFilteredList(dynamic _value) {
    _filteredList.remove(_value);
  }

  void removeAtIndexFromFilteredList(int _index) {
    _filteredList.removeAt(_index);
  }

  void updateFilteredListAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _filteredList[_index] = updateFn(_filteredList[_index]);
  }

  void insertAtIndexInFilteredList(int _index, dynamic _value) {
    _filteredList.insert(_index, _value);
  }

  List<String> _conditions = [];
  List<String> get conditions => _conditions;
  set conditions(List<String> _value) {
    _conditions = _value;
  }

  void addToConditions(String _value) {
    _conditions.add(_value);
  }

  void removeFromConditions(String _value) {
    _conditions.remove(_value);
  }

  void removeAtIndexFromConditions(int _index) {
    _conditions.removeAt(_index);
  }

  void updateConditionsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _conditions[_index] = updateFn(_conditions[_index]);
  }

  void insertAtIndexInConditions(int _index, String _value) {
    _conditions.insert(_index, _value);
  }

  dynamic _UserInfo;
  dynamic get UserInfo => _UserInfo;
  set UserInfo(dynamic _value) {
    _UserInfo = _value;
    prefs.setString('ff_UserInfo', jsonEncode(_value));
  }

  final _countriesQueryManager = FutureRequestManager<List<CountriesRecord>>();
  Future<List<CountriesRecord>> countriesQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<CountriesRecord>> Function() requestFn,
  }) =>
      _countriesQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCountriesQueryCache() => _countriesQueryManager.clear();
  void clearCountriesQueryCacheKey(String? uniqueKey) =>
      _countriesQueryManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
