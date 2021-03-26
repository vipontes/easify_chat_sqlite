import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

import 'auth_dao.dart';
import 'user_dao.dart';

part 'moor_database.g.dart';

@UseMoor(
    tables: [LocalUsers, LocalAuths], daos: [LocalUserDao, LocalAuthDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'chat.sqlite',
          logStatements: true,
        )));

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator runner) {
      return runner.createAll();
    },
    onUpgrade: (Migrator runner, int from, int to) async {

    },
  );
}
