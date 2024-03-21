import '../database.dart';

class GiftsCategoriesTable extends SupabaseTable<GiftsCategoriesRow> {
  @override
  String get tableName => 'gifts_categories';

  @override
  GiftsCategoriesRow createRow(Map<String, dynamic> data) =>
      GiftsCategoriesRow(data);
}

class GiftsCategoriesRow extends SupabaseDataRow {
  GiftsCategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GiftsCategoriesTable();

  int get giftId => getField<int>('gift_id')!;
  set giftId(int value) => setField<int>('gift_id', value);

  int get categoryId => getField<int>('category_id')!;
  set categoryId(int value) => setField<int>('category_id', value);
}
