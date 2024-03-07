import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountriesRecord extends FirestoreRecord {
  CountriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "alpha2" field.
  String? _alpha2;
  String get alpha2 => _alpha2 ?? '';
  bool hasAlpha2() => _alpha2 != null;

  // "alpha3" field.
  String? _alpha3;
  String get alpha3 => _alpha3 ?? '';
  bool hasAlpha3() => _alpha3 != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _alpha2 = snapshotData['alpha2'] as String?;
    _alpha3 = snapshotData['alpha3'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('countries');

  static Stream<CountriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CountriesRecord.fromSnapshot(s));

  static Future<CountriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CountriesRecord.fromSnapshot(s));

  static CountriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CountriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CountriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CountriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CountriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CountriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCountriesRecordData({
  int? id,
  String? alpha2,
  String? alpha3,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'alpha2': alpha2,
      'alpha3': alpha3,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class CountriesRecordDocumentEquality implements Equality<CountriesRecord> {
  const CountriesRecordDocumentEquality();

  @override
  bool equals(CountriesRecord? e1, CountriesRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.alpha2 == e2?.alpha2 &&
        e1?.alpha3 == e2?.alpha3 &&
        e1?.name == e2?.name;
  }

  @override
  int hash(CountriesRecord? e) =>
      const ListEquality().hash([e?.id, e?.alpha2, e?.alpha3, e?.name]);

  @override
  bool isValidKey(Object? o) => o is CountriesRecord;
}
