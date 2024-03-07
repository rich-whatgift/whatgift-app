import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GiftsRecord extends FirestoreRecord {
  GiftsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

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

  // "currency_code" field.
  String? _currencyCode;
  String get currencyCode => _currencyCode ?? '';
  bool hasCurrencyCode() => _currencyCode != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "was_price" field.
  int? _wasPrice;
  int get wasPrice => _wasPrice ?? 0;
  bool hasWasPrice() => _wasPrice != null;

  // "staff_created" field.
  bool? _staffCreated;
  bool get staffCreated => _staffCreated ?? false;
  bool hasStaffCreated() => _staffCreated != null;

  // "photo_primary" field.
  String? _photoPrimary;
  String get photoPrimary => _photoPrimary ?? '';
  bool hasPhotoPrimary() => _photoPrimary != null;

  // "photo_primary_thumbnail" field.
  String? _photoPrimaryThumbnail;
  String get photoPrimaryThumbnail => _photoPrimaryThumbnail ?? '';
  bool hasPhotoPrimaryThumbnail() => _photoPrimaryThumbnail != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _currencyCode = snapshotData['currency_code'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _wasPrice = castToType<int>(snapshotData['was_price']);
    _staffCreated = snapshotData['staff_created'] as bool?;
    _photoPrimary = snapshotData['photo_primary'] as String?;
    _photoPrimaryThumbnail = snapshotData['photo_primary_thumbnail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gifts');

  static Stream<GiftsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GiftsRecord.fromSnapshot(s));

  static Future<GiftsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GiftsRecord.fromSnapshot(s));

  static GiftsRecord fromSnapshot(DocumentSnapshot snapshot) => GiftsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GiftsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GiftsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GiftsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GiftsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGiftsRecordData({
  String? name,
  String? description,
  DateTime? createdAt,
  DateTime? modifiedAt,
  DocumentReference? owner,
  String? currencyCode,
  int? price,
  int? wasPrice,
  bool? staffCreated,
  String? photoPrimary,
  String? photoPrimaryThumbnail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'owner': owner,
      'currency_code': currencyCode,
      'price': price,
      'was_price': wasPrice,
      'staff_created': staffCreated,
      'photo_primary': photoPrimary,
      'photo_primary_thumbnail': photoPrimaryThumbnail,
    }.withoutNulls,
  );

  return firestoreData;
}

class GiftsRecordDocumentEquality implements Equality<GiftsRecord> {
  const GiftsRecordDocumentEquality();

  @override
  bool equals(GiftsRecord? e1, GiftsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.owner == e2?.owner &&
        e1?.currencyCode == e2?.currencyCode &&
        e1?.price == e2?.price &&
        e1?.wasPrice == e2?.wasPrice &&
        e1?.staffCreated == e2?.staffCreated &&
        e1?.photoPrimary == e2?.photoPrimary &&
        e1?.photoPrimaryThumbnail == e2?.photoPrimaryThumbnail;
  }

  @override
  int hash(GiftsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.createdAt,
        e?.modifiedAt,
        e?.owner,
        e?.currencyCode,
        e?.price,
        e?.wasPrice,
        e?.staffCreated,
        e?.photoPrimary,
        e?.photoPrimaryThumbnail
      ]);

  @override
  bool isValidKey(Object? o) => o is GiftsRecord;
}
