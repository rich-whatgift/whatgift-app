import '../database.dart';

class UserTable extends SupabaseTable<UserRow> {
  @override
  String get tableName => 'user';

  @override
  UserRow createRow(Map<String, dynamic> data) => UserRow(data);
}

class UserRow extends SupabaseDataRow {
  UserRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get profileUrl => getField<String>('profile_url');
  set profileUrl(String? value) => setField<String>('profile_url', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  DateTime? get birthday => getField<DateTime>('birthday');
  set birthday(DateTime? value) => setField<DateTime>('birthday', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get displayName => getField<String>('display_name');
  set displayName(String? value) => setField<String>('display_name', value);

  String? get phoneNumber => getField<String>('phone_number');
  set phoneNumber(String? value) => setField<String>('phone_number', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  bool get isProfileCreated => getField<bool>('is_profile_created')!;
  set isProfileCreated(bool value) =>
      setField<bool>('is_profile_created', value);
}
