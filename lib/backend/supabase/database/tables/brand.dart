import '../database.dart';

class BrandTable extends SupabaseTable<BrandRow> {
  @override
  String get tableName => 'brand';

  @override
  BrandRow createRow(Map<String, dynamic> data) => BrandRow(data);
}

class BrandRow extends SupabaseDataRow {
  BrandRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BrandTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
