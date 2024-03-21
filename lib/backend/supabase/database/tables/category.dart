import '../database.dart';

class CategoryTable extends SupabaseTable<CategoryRow> {
  @override
  String get tableName => 'category';

  @override
  CategoryRow createRow(Map<String, dynamic> data) => CategoryRow(data);
}

class CategoryRow extends SupabaseDataRow {
  CategoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get parentId => getField<int>('parent_id');
  set parentId(int? value) => setField<int>('parent_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
