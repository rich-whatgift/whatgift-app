import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GiftAdditionalPhotosRecord extends FirestoreRecord {
  GiftAdditionalPhotosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "additional_photo_url" field.
  String? _additionalPhotoUrl;
  String get additionalPhotoUrl => _additionalPhotoUrl ?? '';
  bool hasAdditionalPhotoUrl() => _additionalPhotoUrl != null;

  // "additional_photo_thumbnail_url" field.
  String? _additionalPhotoThumbnailUrl;
  String get additionalPhotoThumbnailUrl => _additionalPhotoThumbnailUrl ?? '';
  bool hasAdditionalPhotoThumbnailUrl() => _additionalPhotoThumbnailUrl != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _additionalPhotoUrl = snapshotData['additional_photo_url'] as String?;
    _additionalPhotoThumbnailUrl =
        snapshotData['additional_photo_thumbnail_url'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('gift_additional_photos')
          : FirebaseFirestore.instance
              .collectionGroup('gift_additional_photos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('gift_additional_photos').doc(id);

  static Stream<GiftAdditionalPhotosRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => GiftAdditionalPhotosRecord.fromSnapshot(s));

  static Future<GiftAdditionalPhotosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => GiftAdditionalPhotosRecord.fromSnapshot(s));

  static GiftAdditionalPhotosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GiftAdditionalPhotosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GiftAdditionalPhotosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GiftAdditionalPhotosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GiftAdditionalPhotosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GiftAdditionalPhotosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGiftAdditionalPhotosRecordData({
  String? additionalPhotoUrl,
  String? additionalPhotoThumbnailUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'additional_photo_url': additionalPhotoUrl,
      'additional_photo_thumbnail_url': additionalPhotoThumbnailUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class GiftAdditionalPhotosRecordDocumentEquality
    implements Equality<GiftAdditionalPhotosRecord> {
  const GiftAdditionalPhotosRecordDocumentEquality();

  @override
  bool equals(GiftAdditionalPhotosRecord? e1, GiftAdditionalPhotosRecord? e2) {
    return e1?.additionalPhotoUrl == e2?.additionalPhotoUrl &&
        e1?.additionalPhotoThumbnailUrl == e2?.additionalPhotoThumbnailUrl;
  }

  @override
  int hash(GiftAdditionalPhotosRecord? e) => const ListEquality()
      .hash([e?.additionalPhotoUrl, e?.additionalPhotoThumbnailUrl]);

  @override
  bool isValidKey(Object? o) => o is GiftAdditionalPhotosRecord;
}
