import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersPrivateRecord extends FirestoreRecord {
  UsersPrivateRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "country" field.
  DocumentReference? _country;
  DocumentReference? get country => _country;
  bool hasCountry() => _country != null;

  // "mobile" field.
  int? _mobile;
  int get mobile => _mobile ?? 0;
  bool hasMobile() => _mobile != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "language" field.
  DocumentReference? _language;
  DocumentReference? get language => _language;
  bool hasLanguage() => _language != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _country = snapshotData['country'] as DocumentReference?;
    _mobile = castToType<int>(snapshotData['mobile']);
    _email = snapshotData['email'] as String?;
    _language = snapshotData['language'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('users_private')
          : FirebaseFirestore.instance.collectionGroup('users_private');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('users_private').doc(id);

  static Stream<UsersPrivateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersPrivateRecord.fromSnapshot(s));

  static Future<UsersPrivateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersPrivateRecord.fromSnapshot(s));

  static UsersPrivateRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsersPrivateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersPrivateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersPrivateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersPrivateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersPrivateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersPrivateRecordData({
  DocumentReference? country,
  int? mobile,
  String? email,
  DocumentReference? language,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'country': country,
      'mobile': mobile,
      'email': email,
      'language': language,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersPrivateRecordDocumentEquality
    implements Equality<UsersPrivateRecord> {
  const UsersPrivateRecordDocumentEquality();

  @override
  bool equals(UsersPrivateRecord? e1, UsersPrivateRecord? e2) {
    return e1?.country == e2?.country &&
        e1?.mobile == e2?.mobile &&
        e1?.email == e2?.email &&
        e1?.language == e2?.language;
  }

  @override
  int hash(UsersPrivateRecord? e) =>
      const ListEquality().hash([e?.country, e?.mobile, e?.email, e?.language]);

  @override
  bool isValidKey(Object? o) => o is UsersPrivateRecord;
}
