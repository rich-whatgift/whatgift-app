import '../database.dart';

class GroupMemberTable extends SupabaseTable<GroupMemberRow> {
  @override
  String get tableName => 'group_member';

  @override
  GroupMemberRow createRow(Map<String, dynamic> data) => GroupMemberRow(data);
}

class GroupMemberRow extends SupabaseDataRow {
  GroupMemberRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GroupMemberTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get groupId => getField<int>('group_id');
  set groupId(int? value) => setField<int>('group_id', value);

  String? get userIdList => getField<String>('user_id_list');
  set userIdList(String? value) => setField<String>('user_id_list', value);

  int? get listId => getField<int>('list_id');
  set listId(int? value) => setField<int>('list_id', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  String? get relationship => getField<String>('relationship');
  set relationship(String? value) => setField<String>('relationship', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
