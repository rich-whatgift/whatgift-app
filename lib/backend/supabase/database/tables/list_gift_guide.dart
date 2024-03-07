import '../database.dart';

class ListGiftGuideTable extends SupabaseTable<ListGiftGuideRow> {
  @override
  String get tableName => 'list_gift_guide';

  @override
  ListGiftGuideRow createRow(Map<String, dynamic> data) =>
      ListGiftGuideRow(data);
}

class ListGiftGuideRow extends SupabaseDataRow {
  ListGiftGuideRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ListGiftGuideTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get listId => getField<int>('list_id')!;
  set listId(int value) => setField<int>('list_id', value);

  int get giftGuideId => getField<int>('gift_guide_id')!;
  set giftGuideId(int value) => setField<int>('gift_guide_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
