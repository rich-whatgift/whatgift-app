import '../database.dart';

class ListTable extends SupabaseTable<ListRow> {
  @override
  String get tableName => 'list';

  @override
  ListRow createRow(Map<String, dynamic> data) => ListRow(data);
}

class ListRow extends SupabaseDataRow {
  ListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ListTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get ownerId => getField<String>('owner_id');
  set ownerId(String? value) => setField<String>('owner_id', value);

  bool? get isMyList => getField<bool>('is_my_list');
  set isMyList(bool? value) => setField<bool>('is_my_list', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  List<int> get giftIds => getListField<int>('gift_ids');
  set giftIds(List<int>? value) => setListField<int>('gift_ids', value);
}
