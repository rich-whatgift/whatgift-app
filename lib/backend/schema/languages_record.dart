import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LanguagesRecord extends FirestoreRecord {
  LanguagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "english" field.
  String? _english;
  String get english => _english ?? '';
  bool hasEnglish() => _english != null;

  void _initializeFields() {
    _english = snapshotData['english'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('languages');

  static Stream<LanguagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LanguagesRecord.fromSnapshot(s));

  static Future<LanguagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LanguagesRecord.fromSnapshot(s));

  static LanguagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LanguagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LanguagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LanguagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LanguagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LanguagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLanguagesRecordData({
  String? english,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'english': english,
    }.withoutNulls,
  );

  return firestoreData;
}

class LanguagesRecordDocumentEquality implements Equality<LanguagesRecord> {
  const LanguagesRecordDocumentEquality();

  @override
  bool equals(LanguagesRecord? e1, LanguagesRecord? e2) {
    return e1?.english == e2?.english;
  }

  @override
  int hash(LanguagesRecord? e) => const ListEquality().hash([e?.english]);

  @override
  bool isValidKey(Object? o) => o is LanguagesRecord;
}
