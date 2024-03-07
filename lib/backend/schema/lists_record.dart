import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListsRecord extends FirestoreRecord {
  ListsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "private" field.
  bool? _private;
  bool get private => _private ?? false;
  bool hasPrivate() => _private != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "type" field.
  ListType? _type;
  ListType? get type => _type;
  bool hasType() => _type != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _private = snapshotData['private'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _type = deserializeEnum<ListType>(snapshotData['type']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lists');

  static Stream<ListsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListsRecord.fromSnapshot(s));

  static Future<ListsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListsRecord.fromSnapshot(s));

  static ListsRecord fromSnapshot(DocumentSnapshot snapshot) => ListsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListsRecordData({
  String? title,
  String? description,
  bool? private,
  DateTime? createdAt,
  DateTime? modifiedAt,
  DocumentReference? owner,
  ListType? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'private': private,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'owner': owner,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListsRecordDocumentEquality implements Equality<ListsRecord> {
  const ListsRecordDocumentEquality();

  @override
  bool equals(ListsRecord? e1, ListsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.private == e2?.private &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.owner == e2?.owner &&
        e1?.type == e2?.type;
  }

  @override
  int hash(ListsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.private,
        e?.createdAt,
        e?.modifiedAt,
        e?.owner,
        e?.type
      ]);

  @override
  bool isValidKey(Object? o) => o is ListsRecord;
}
