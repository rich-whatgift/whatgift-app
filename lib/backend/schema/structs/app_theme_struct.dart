// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppThemeStruct extends FFFirebaseStruct {
  AppThemeStruct({
    String? theme1,
    bool? theme2,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _theme1 = theme1,
        _theme2 = theme2,
        super(firestoreUtilData);

  // "theme1" field.
  String? _theme1;
  String get theme1 => _theme1 ?? '';
  set theme1(String? val) => _theme1 = val;
  bool hasTheme1() => _theme1 != null;

  // "theme2" field.
  bool? _theme2;
  bool get theme2 => _theme2 ?? false;
  set theme2(bool? val) => _theme2 = val;
  bool hasTheme2() => _theme2 != null;

  static AppThemeStruct fromMap(Map<String, dynamic> data) => AppThemeStruct(
        theme1: data['theme1'] as String?,
        theme2: data['theme2'] as bool?,
      );

  static AppThemeStruct? maybeFromMap(dynamic data) =>
      data is Map ? AppThemeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'theme1': _theme1,
        'theme2': _theme2,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'theme1': serializeParam(
          _theme1,
          ParamType.String,
        ),
        'theme2': serializeParam(
          _theme2,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AppThemeStruct fromSerializableMap(Map<String, dynamic> data) =>
      AppThemeStruct(
        theme1: deserializeParam(
          data['theme1'],
          ParamType.String,
          false,
        ),
        theme2: deserializeParam(
          data['theme2'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AppThemeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AppThemeStruct &&
        theme1 == other.theme1 &&
        theme2 == other.theme2;
  }

  @override
  int get hashCode => const ListEquality().hash([theme1, theme2]);
}

AppThemeStruct createAppThemeStruct({
  String? theme1,
  bool? theme2,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AppThemeStruct(
      theme1: theme1,
      theme2: theme2,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AppThemeStruct? updateAppThemeStruct(
  AppThemeStruct? appTheme, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    appTheme
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAppThemeStructData(
  Map<String, dynamic> firestoreData,
  AppThemeStruct? appTheme,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (appTheme == null) {
    return;
  }
  if (appTheme.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && appTheme.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final appThemeData = getAppThemeFirestoreData(appTheme, forFieldValue);
  final nestedData = appThemeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = appTheme.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAppThemeFirestoreData(
  AppThemeStruct? appTheme, [
  bool forFieldValue = false,
]) {
  if (appTheme == null) {
    return {};
  }
  final firestoreData = mapToFirestore(appTheme.toMap());

  // Add any Firestore field values
  appTheme.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAppThemeListFirestoreData(
  List<AppThemeStruct>? appThemes,
) =>
    appThemes?.map((e) => getAppThemeFirestoreData(e, true)).toList() ?? [];
