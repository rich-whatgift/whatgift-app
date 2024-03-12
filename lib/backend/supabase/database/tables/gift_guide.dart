import '../database.dart';

class GiftGuideTable extends SupabaseTable<GiftGuideRow> {
  @override
  String get tableName => 'gift_guide';

  @override
  GiftGuideRow createRow(Map<String, dynamic> data) => GiftGuideRow(data);
}

class GiftGuideRow extends SupabaseDataRow {
  GiftGuideRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GiftGuideTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  int? get likeNum => getField<int>('like_num');
  set likeNum(int? value) => setField<int>('like_num', value);

  int? get dislikeNum => getField<int>('dislike_num');
  set dislikeNum(int? value) => setField<int>('dislike_num', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get affiliateUrl => getField<String>('affiliate_url');
  set affiliateUrl(String? value) => setField<String>('affiliate_url', value);

  String? get currency => getField<String>('currency');
  set currency(String? value) => setField<String>('currency', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  String? get highlightLabel => getField<String>('highlight_label');
  set highlightLabel(String? value) =>
      setField<String>('highlight_label', value);
}
