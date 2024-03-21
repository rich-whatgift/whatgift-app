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

  dynamic? get metadata => getField<dynamic>('metadata');
  set metadata(dynamic? value) => setField<dynamic>('metadata', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);

  String? get brand => getField<String>('brand');
  set brand(String? value) => setField<String>('brand', value);

  bool? get live => getField<bool>('live');
  set live(bool? value) => setField<bool>('live', value);

  String? get liveDetail => getField<String>('live_detail');
  set liveDetail(String? value) => setField<String>('live_detail', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get priceSale => getField<double>('price_sale');
  set priceSale(double? value) => setField<double>('price_sale', value);

  List<String> get imageThumbnails => getListField<String>('image_thumbnails');
  set imageThumbnails(List<String>? value) =>
      setListField<String>('image_thumbnails', value);

  int? get brandId => getField<int>('brand_id');
  set brandId(int? value) => setField<int>('brand_id', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);
}
