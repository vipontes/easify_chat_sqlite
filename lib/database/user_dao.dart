import 'package:moor_flutter/moor_flutter.dart';
import 'moor_database.dart';

part 'user_dao.g.dart';

class LocalUsers extends Table {
  IntColumn get userId => integer()();
  TextColumn get userFullName => text()();
  TextColumn get userPhone => text()();
  TextColumn get userPass => text()();
  IntColumn get userAccessGranted => integer()();
  TextColumn get userCreatedAt => text()();
  TextColumn get userImage => text()();
  TextColumn get userToken => text()();
  TextColumn get userRefreshToken => text()();

  @override
  Set<Column> get primaryKey => {userId};
}

@UseDao(tables: [LocalUsers])
class LocalUserDao extends DatabaseAccessor<AppDatabase> with _$LocalUserDaoMixin {
  LocalUserDao(AppDatabase db) : super(db);

  Future<LocalUser> getUserById(int userId) =>
      (select(localUsers)..where((x) => x.userId.equals(userId))).getSingle();
  Future<List<LocalUser>> getAllUsers() => select(localUsers).get();
  Future insertUser(LocalUser data) => into(localUsers).insert(data);
  Future updateUser(LocalUser data) => update(localUsers).replace(data);
  Future deleteUser(LocalUser data) => delete(localUsers).delete(data);
}
