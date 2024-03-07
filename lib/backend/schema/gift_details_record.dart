import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GiftDetailsRecord extends FirestoreRecord {
  GiftDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "gift_description" field.
  String? _giftDescription;
  String get giftDescription => _giftDescription ?? '';
  bool hasGiftDescription() => _giftDescription != null;

  // "gift_rating" field.
  int? _giftRating;
  int get giftRating => _giftRating ?? 0;
  bool hasGiftRating() => _giftRating != null;

  // "gift_colour" field.
  String? _giftColour;
  String get giftColour => _giftColour ?? '';
  bool hasGiftColour() => _giftColour != null;

  // "gift_size" field.
  String? _giftSize;
  String get giftSize => _giftSize ?? '';
  bool hasGiftSize() => _giftSize != null;

  // "gift_location" field.
  LatLng? _giftLocation;
  LatLng? get giftLocation => _giftLocation;
  bool hasGiftLocation() => _giftLocation != null;

  // "gift_notes" field.
  String? _giftNotes;
  String get giftNotes => _giftNotes ?? '';
  bool hasGiftNotes() => _giftNotes != null;

  // "gift_url" field.
  String? _giftUrl;
  String get giftUrl => _giftUrl ?? '';
  bool hasGiftUrl() => _giftUrl != null;

  // "gift_url_affiliate" field.
  String? _giftUrlAffiliate;
  String get giftUrlAffiliate => _giftUrlAffiliate ?? '';
  bool hasGiftUrlAffiliate() => _giftUrlAffiliate != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _giftDescription = snapshotData['gift_description'] as String?;
    _giftRating = castToType<int>(snapshotData['gift_rating']);
    _giftColour = snapshotData['gift_colour'] as String?;
    _giftSize = snapshotData['gift_size'] as String?;
    _giftLocation = snapshotData['gift_location'] as LatLng?;
    _giftNotes = snapshotData['gift_notes'] as String?;
    _giftUrl = snapshotData['gift_url'] as String?;
    _giftUrlAffiliate = snapshotData['gift_url_affiliate'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('gift_details')
          : FirebaseFirestore.instance.collectionGroup('gift_details');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('gift_details').doc(id);

  static Stream<GiftDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GiftDetailsRecord.fromSnapshot(s));

  static Future<GiftDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GiftDetailsRecord.fromSnapshot(s));

  static GiftDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GiftDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GiftDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GiftDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GiftDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GiftDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGiftDetailsRecordData({
  String? giftDescription,
  int? giftRating,
  String? giftColour,
  String? giftSize,
  LatLng? giftLocation,
  String? giftNotes,
  String? giftUrl,
  String? giftUrlAffiliate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'gift_description': giftDescription,
      'gift_rating': giftRating,
      'gift_colour': giftColour,
      'gift_size': giftSize,
      'gift_location': giftLocation,
      'gift_notes': giftNotes,
      'gift_url': giftUrl,
      'gift_url_affiliate': giftUrlAffiliate,
    }.withoutNulls,
  );

  return firestoreData;
}

class GiftDetailsRecordDocumentEquality implements Equality<GiftDetailsRecord> {
  const GiftDetailsRecordDocumentEquality();

  @override
  bool equals(GiftDetailsRecord? e1, GiftDetailsRecord? e2) {
    return e1?.giftDescription == e2?.giftDescription &&
        e1?.giftRating == e2?.giftRating &&
        e1?.giftColour == e2?.giftColour &&
        e1?.giftSize == e2?.giftSize &&
        e1?.giftLocation == e2?.giftLocation &&
        e1?.giftNotes == e2?.giftNotes &&
        e1?.giftUrl == e2?.giftUrl &&
        e1?.giftUrlAffiliate == e2?.giftUrlAffiliate;
  }

  @override
  int hash(GiftDetailsRecord? e) => const ListEquality().hash([
        e?.giftDescription,
        e?.giftRating,
        e?.giftColour,
        e?.giftSize,
        e?.giftLocation,
        e?.giftNotes,
        e?.giftUrl,
        e?.giftUrlAffiliate
      ]);

  @override
  bool isValidKey(Object? o) => o is GiftDetailsRecord;
}
