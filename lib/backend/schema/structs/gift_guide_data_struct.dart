// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GiftGuideDataStruct extends FFFirebaseStruct {
  GiftGuideDataStruct({
    String? title,
    String? imageUrl,
    int? likeNum,
    int? dislikeNum,
    String? category,
    double? price,
    String? currency,
    String? affiliateUrl,
    int? id,
    DateTime? createdAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _imageUrl = imageUrl,
        _likeNum = likeNum,
        _dislikeNum = dislikeNum,
        _category = category,
        _price = price,
        _currency = currency,
        _affiliateUrl = affiliateUrl,
        _id = id,
        _createdAt = createdAt,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;
  bool hasImageUrl() => _imageUrl != null;

  // "like_num" field.
  int? _likeNum;
  int get likeNum => _likeNum ?? 0;
  set likeNum(int? val) => _likeNum = val;
  void incrementLikeNum(int amount) => _likeNum = likeNum + amount;
  bool hasLikeNum() => _likeNum != null;

  // "dislike_num" field.
  int? _dislikeNum;
  int get dislikeNum => _dislikeNum ?? 0;
  set dislikeNum(int? val) => _dislikeNum = val;
  void incrementDislikeNum(int amount) => _dislikeNum = dislikeNum + amount;
  bool hasDislikeNum() => _dislikeNum != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;
  bool hasCategory() => _category != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;
  bool hasCurrency() => _currency != null;

  // "affiliate_url" field.
  String? _affiliateUrl;
  String get affiliateUrl => _affiliateUrl ?? '';
  set affiliateUrl(String? val) => _affiliateUrl = val;
  bool hasAffiliateUrl() => _affiliateUrl != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  static GiftGuideDataStruct fromMap(Map<String, dynamic> data) =>
      GiftGuideDataStruct(
        title: data['title'] as String?,
        imageUrl: data['image_url'] as String?,
        likeNum: castToType<int>(data['like_num']),
        dislikeNum: castToType<int>(data['dislike_num']),
        category: data['category'] as String?,
        price: castToType<double>(data['price']),
        currency: data['currency'] as String?,
        affiliateUrl: data['affiliate_url'] as String?,
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as DateTime?,
      );

  static GiftGuideDataStruct? maybeFromMap(dynamic data) => data is Map
      ? GiftGuideDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'image_url': _imageUrl,
        'like_num': _likeNum,
        'dislike_num': _dislikeNum,
        'category': _category,
        'price': _price,
        'currency': _currency,
        'affiliate_url': _affiliateUrl,
        'id': _id,
        'created_at': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'image_url': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
        'like_num': serializeParam(
          _likeNum,
          ParamType.int,
        ),
        'dislike_num': serializeParam(
          _dislikeNum,
          ParamType.int,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'affiliate_url': serializeParam(
          _affiliateUrl,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static GiftGuideDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      GiftGuideDataStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['image_url'],
          ParamType.String,
          false,
        ),
        likeNum: deserializeParam(
          data['like_num'],
          ParamType.int,
          false,
        ),
        dislikeNum: deserializeParam(
          data['dislike_num'],
          ParamType.int,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        affiliateUrl: deserializeParam(
          data['affiliate_url'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'GiftGuideDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GiftGuideDataStruct &&
        title == other.title &&
        imageUrl == other.imageUrl &&
        likeNum == other.likeNum &&
        dislikeNum == other.dislikeNum &&
        category == other.category &&
        price == other.price &&
        currency == other.currency &&
        affiliateUrl == other.affiliateUrl &&
        id == other.id &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        title,
        imageUrl,
        likeNum,
        dislikeNum,
        category,
        price,
        currency,
        affiliateUrl,
        id,
        createdAt
      ]);
}

GiftGuideDataStruct createGiftGuideDataStruct({
  String? title,
  String? imageUrl,
  int? likeNum,
  int? dislikeNum,
  String? category,
  double? price,
  String? currency,
  String? affiliateUrl,
  int? id,
  DateTime? createdAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GiftGuideDataStruct(
      title: title,
      imageUrl: imageUrl,
      likeNum: likeNum,
      dislikeNum: dislikeNum,
      category: category,
      price: price,
      currency: currency,
      affiliateUrl: affiliateUrl,
      id: id,
      createdAt: createdAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GiftGuideDataStruct? updateGiftGuideDataStruct(
  GiftGuideDataStruct? giftGuideData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    giftGuideData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGiftGuideDataStructData(
  Map<String, dynamic> firestoreData,
  GiftGuideDataStruct? giftGuideData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (giftGuideData == null) {
    return;
  }
  if (giftGuideData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && giftGuideData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final giftGuideDataData =
      getGiftGuideDataFirestoreData(giftGuideData, forFieldValue);
  final nestedData =
      giftGuideDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = giftGuideData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGiftGuideDataFirestoreData(
  GiftGuideDataStruct? giftGuideData, [
  bool forFieldValue = false,
]) {
  if (giftGuideData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(giftGuideData.toMap());

  // Add any Firestore field values
  giftGuideData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGiftGuideDataListFirestoreData(
  List<GiftGuideDataStruct>? giftGuideDatas,
) =>
    giftGuideDatas
        ?.map((e) => getGiftGuideDataFirestoreData(e, true))
        .toList() ??
    [];
