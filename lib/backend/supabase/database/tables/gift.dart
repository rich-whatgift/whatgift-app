import '../database.dart';

class GiftTable extends SupabaseTable<GiftRow> {
  @override
  String get tableName => 'gift';

  @override
  GiftRow createRow(Map<String, dynamic> data) => GiftRow(data);
}

class GiftRow extends SupabaseDataRow {
  GiftRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GiftTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get listId => getField<int>('list_id');
  set listId(int? value) => setField<int>('list_id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get currency => getField<String>('currency');
  set currency(String? value) => setField<String>('currency', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get giftUrl => getField<String>('gift_url');
  set giftUrl(String? value) => setField<String>('gift_url', value);

  String? get affiliatedUrl => getField<String>('affiliated_url');
  set affiliatedUrl(String? value) => setField<String>('affiliated_url', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  double? get salePrice => getField<double>('sale_price');
  set salePrice(double? value) => setField<double>('sale_price', value);

  String? get creator => getField<String>('creator');
  set creator(String? value) => setField<String>('creator', value);
}
