import 'package:moor_flutter/moor_flutter.dart';
import 'moor_database.dart';

part 'auth_dao.g.dart';

class LocalAuths extends Table {
  IntColumn get userId => integer()();
  TextColumn get userFullName => text()();
  TextColumn get userPhone => text()();
  TextColumn get userPass => text()();
  IntColumn get userAccessGranted => integer()();
  TextColumn get userCreatedAt => text()();
  TextColumn get userToken => text()();
  TextColumn get userRefreshToken => text()();

  @override
  Set<Column> get primaryKey => {userId};
}

@UseDao(tables: [LocalAuths])
class LocalAuthDao extends DatabaseAccessor<AppDatabase> with _$LocalAuthDaoMixin {
  LocalAuthDao(AppDatabase db) : super(db);

  Future<LocalAuth> getFirst() => select(localAuths).getSingle();
  Future insertAuth(LocalAuth data) => into(localAuths).insert(data);
  Future updateAuth(LocalAuth data) => update(localAuths).replace(data);
  Future deleteAuth(LocalAuth data) => delete(localAuths).delete(data);
  Future deleteAll() => delete(localAuths).go();
}
