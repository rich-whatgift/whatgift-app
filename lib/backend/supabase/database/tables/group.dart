import '../database.dart';

class GroupTable extends SupabaseTable<GroupRow> {
  @override
  String get tableName => 'group';

  @override
  GroupRow createRow(Map<String, dynamic> data) => GroupRow(data);
}

class GroupRow extends SupabaseDataRow {
  GroupRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GroupTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get ownerId => getField<String>('owner_id');
  set ownerId(String? value) => setField<String>('owner_id', value);

  String? get groupName => getField<String>('group_name');
  set groupName(String? value) => setField<String>('group_name', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
