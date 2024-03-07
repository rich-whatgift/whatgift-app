import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
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

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "days_to_go_till_event" field.
  int? _daysToGoTillEvent;
  int get daysToGoTillEvent => _daysToGoTillEvent ?? 0;
  bool hasDaysToGoTillEvent() => _daysToGoTillEvent != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "recurrence" field.
  RecurringDatePeriod? _recurrence;
  RecurringDatePeriod? get recurrence => _recurrence;
  bool hasRecurrence() => _recurrence != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _startTime = snapshotData['start_time'] as DateTime?;
    _endTime = snapshotData['end_time'] as DateTime?;
    _daysToGoTillEvent = castToType<int>(snapshotData['days_to_go_till_event']);
    _createdBy = snapshotData['created_by'] as DocumentReference?;
    _recurrence =
        deserializeEnum<RecurringDatePeriod>(snapshotData['recurrence']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? title,
  String? description,
  DateTime? startTime,
  DateTime? endTime,
  int? daysToGoTillEvent,
  DocumentReference? createdBy,
  RecurringDatePeriod? recurrence,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'start_time': startTime,
      'end_time': endTime,
      'days_to_go_till_event': daysToGoTillEvent,
      'created_by': createdBy,
      'recurrence': recurrence,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.daysToGoTillEvent == e2?.daysToGoTillEvent &&
        e1?.createdBy == e2?.createdBy &&
        e1?.recurrence == e2?.recurrence;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.startTime,
        e?.endTime,
        e?.daysToGoTillEvent,
        e?.createdBy,
        e?.recurrence
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
