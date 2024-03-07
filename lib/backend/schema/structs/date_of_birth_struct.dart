// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DateOfBirthStruct extends FFFirebaseStruct {
  DateOfBirthStruct({
    DateTime? dateOfBirth,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _dateOfBirth = dateOfBirth,
        super(firestoreUtilData);

  // "dateOfBirth" field.
  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _dateOfBirth;
  set dateOfBirth(DateTime? val) => _dateOfBirth = val;
  bool hasDateOfBirth() => _dateOfBirth != null;

  static DateOfBirthStruct fromMap(Map<String, dynamic> data) =>
      DateOfBirthStruct(
        dateOfBirth: data['dateOfBirth'] as DateTime?,
      );

  static DateOfBirthStruct? maybeFromMap(dynamic data) => data is Map
      ? DateOfBirthStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dateOfBirth': _dateOfBirth,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dateOfBirth': serializeParam(
          _dateOfBirth,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static DateOfBirthStruct fromSerializableMap(Map<String, dynamic> data) =>
      DateOfBirthStruct(
        dateOfBirth: deserializeParam(
          data['dateOfBirth'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'DateOfBirthStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DateOfBirthStruct && dateOfBirth == other.dateOfBirth;
  }

  @override
  int get hashCode => const ListEquality().hash([dateOfBirth]);
}

DateOfBirthStruct createDateOfBirthStruct({
  DateTime? dateOfBirth,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DateOfBirthStruct(
      dateOfBirth: dateOfBirth,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DateOfBirthStruct? updateDateOfBirthStruct(
  DateOfBirthStruct? dateOfBirthStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dateOfBirthStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDateOfBirthStructData(
  Map<String, dynamic> firestoreData,
  DateOfBirthStruct? dateOfBirthStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dateOfBirthStruct == null) {
    return;
  }
  if (dateOfBirthStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dateOfBirthStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dateOfBirthStructData =
      getDateOfBirthFirestoreData(dateOfBirthStruct, forFieldValue);
  final nestedData =
      dateOfBirthStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dateOfBirthStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDateOfBirthFirestoreData(
  DateOfBirthStruct? dateOfBirthStruct, [
  bool forFieldValue = false,
]) {
  if (dateOfBirthStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dateOfBirthStruct.toMap());

  // Add any Firestore field values
  dateOfBirthStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDateOfBirthListFirestoreData(
  List<DateOfBirthStruct>? dateOfBirthStructs,
) =>
    dateOfBirthStructs
        ?.map((e) => getDateOfBirthFirestoreData(e, true))
        .toList() ??
    [];
