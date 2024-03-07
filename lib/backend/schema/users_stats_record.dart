import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersStatsRecord extends FirestoreRecord {
  UsersStatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "total_gifts_bought_by_user" field.
  int? _totalGiftsBoughtByUser;
  int get totalGiftsBoughtByUser => _totalGiftsBoughtByUser ?? 0;
  bool hasTotalGiftsBoughtByUser() => _totalGiftsBoughtByUser != null;

  // "total_gifts_bought_for_user" field.
  int? _totalGiftsBoughtForUser;
  int get totalGiftsBoughtForUser => _totalGiftsBoughtForUser ?? 0;
  bool hasTotalGiftsBoughtForUser() => _totalGiftsBoughtForUser != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _totalGiftsBoughtByUser =
        castToType<int>(snapshotData['total_gifts_bought_by_user']);
    _totalGiftsBoughtForUser =
        castToType<int>(snapshotData['total_gifts_bought_for_user']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('users_stats')
          : FirebaseFirestore.instance.collectionGroup('users_stats');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('users_stats').doc(id);

  static Stream<UsersStatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersStatsRecord.fromSnapshot(s));

  static Future<UsersStatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersStatsRecord.fromSnapshot(s));

  static UsersStatsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsersStatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersStatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersStatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersStatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersStatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersStatsRecordData({
  int? totalGiftsBoughtByUser,
  int? totalGiftsBoughtForUser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'total_gifts_bought_by_user': totalGiftsBoughtByUser,
      'total_gifts_bought_for_user': totalGiftsBoughtForUser,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersStatsRecordDocumentEquality implements Equality<UsersStatsRecord> {
  const UsersStatsRecordDocumentEquality();

  @override
  bool equals(UsersStatsRecord? e1, UsersStatsRecord? e2) {
    return e1?.totalGiftsBoughtByUser == e2?.totalGiftsBoughtByUser &&
        e1?.totalGiftsBoughtForUser == e2?.totalGiftsBoughtForUser;
  }

  @override
  int hash(UsersStatsRecord? e) => const ListEquality()
      .hash([e?.totalGiftsBoughtByUser, e?.totalGiftsBoughtForUser]);

  @override
  bool isValidKey(Object? o) => o is UsersStatsRecord;
}
