import 'package:collection/collection.dart';

enum ListType {
  birthday,
  christmas,
  anniversary,
  wedding,
  babyShower,
  general,
  other,
}

enum RecurringDatePeriod {
  weekly,
  monthly,
  quarterly,
  yearly,
}

enum UserRoles {
  user,
  admin,
  superAdmin,
  editor,
  author,
  analyst,
  support,
}

enum Gender {
  Female,
  Male,
  Other,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (ListType):
      return ListType.values.deserialize(value) as T?;
    case (RecurringDatePeriod):
      return RecurringDatePeriod.values.deserialize(value) as T?;
    case (UserRoles):
      return UserRoles.values.deserialize(value) as T?;
    case (Gender):
      return Gender.values.deserialize(value) as T?;
    default:
      return null;
  }
}
