// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StyleStruct extends FFFirebaseStruct {
  StyleStruct({
    bool? test1,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _test1 = test1,
        super(firestoreUtilData);

  // "test1" field.
  bool? _test1;
  bool get test1 => _test1 ?? false;
  set test1(bool? val) => _test1 = val;
  bool hasTest1() => _test1 != null;

  static StyleStruct fromMap(Map<String, dynamic> data) => StyleStruct(
        test1: data['test1'] as bool?,
      );

  static StyleStruct? maybeFromMap(dynamic data) =>
      data is Map ? StyleStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'test1': _test1,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'test1': serializeParam(
          _test1,
          ParamType.bool,
        ),
      }.withoutNulls;

  static StyleStruct fromSerializableMap(Map<String, dynamic> data) =>
      StyleStruct(
        test1: deserializeParam(
          data['test1'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'StyleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StyleStruct && test1 == other.test1;
  }

  @override
  int get hashCode => const ListEquality().hash([test1]);
}

StyleStruct createStyleStruct({
  bool? test1,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StyleStruct(
      test1: test1,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StyleStruct? updateStyleStruct(
  StyleStruct? style, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    style
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStyleStructData(
  Map<String, dynamic> firestoreData,
  StyleStruct? style,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (style == null) {
    return;
  }
  if (style.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && style.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final styleData = getStyleFirestoreData(style, forFieldValue);
  final nestedData = styleData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = style.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStyleFirestoreData(
  StyleStruct? style, [
  bool forFieldValue = false,
]) {
  if (style == null) {
    return {};
  }
  final firestoreData = mapToFirestore(style.toMap());

  // Add any Firestore field values
  style.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStyleListFirestoreData(
  List<StyleStruct>? styles,
) =>
    styles?.map((e) => getStyleFirestoreData(e, true)).toList() ?? [];
