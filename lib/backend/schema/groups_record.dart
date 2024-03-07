import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupsRecord extends FirestoreRecord {
  GroupsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "last_edited" field.
  DateTime? _lastEdited;
  DateTime? get lastEdited => _lastEdited;
  bool hasLastEdited() => _lastEdited != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "lists" field.
  List<DocumentReference>? _lists;
  List<DocumentReference> get lists => _lists ?? const [];
  bool hasLists() => _lists != null;

  void _initializeFields() {
    _owner = snapshotData['owner'] as DocumentReference?;
    _lastEdited = snapshotData['last_edited'] as DateTime?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _lists = getDataList(snapshotData['lists']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('groups');

  static Stream<GroupsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupsRecord.fromSnapshot(s));

  static Future<GroupsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupsRecord.fromSnapshot(s));

  static GroupsRecord fromSnapshot(DocumentSnapshot snapshot) => GroupsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupsRecordData({
  DocumentReference? owner,
  DateTime? lastEdited,
  DateTime? timeCreated,
  String? title,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'owner': owner,
      'last_edited': lastEdited,
      'time_created': timeCreated,
      'title': title,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroupsRecordDocumentEquality implements Equality<GroupsRecord> {
  const GroupsRecordDocumentEquality();

  @override
  bool equals(GroupsRecord? e1, GroupsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.owner == e2?.owner &&
        e1?.lastEdited == e2?.lastEdited &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.lists, e2?.lists);
  }

  @override
  int hash(GroupsRecord? e) => const ListEquality().hash([
        e?.owner,
        e?.lastEdited,
        e?.timeCreated,
        e?.title,
        e?.description,
        e?.lists
      ]);

  @override
  bool isValidKey(Object? o) => o is GroupsRecord;
}
