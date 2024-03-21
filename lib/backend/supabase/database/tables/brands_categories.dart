import '../database.dart';

class BrandsCategoriesTable extends SupabaseTable<BrandsCategoriesRow> {
  @override
  String get tableName => 'brands_categories';

  @override
  BrandsCategoriesRow createRow(Map<String, dynamic> data) =>
      BrandsCategoriesRow(data);
}

class BrandsCategoriesRow extends SupabaseDataRow {
  BrandsCategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BrandsCategoriesTable();

  int get brandId => getField<int>('brand_id')!;
  set brandId(int value) => setField<int>('brand_id', value);

  int get categoryId => getField<int>('category_id')!;
  set categoryId(int value) => setField<int>('category_id', value);
}
