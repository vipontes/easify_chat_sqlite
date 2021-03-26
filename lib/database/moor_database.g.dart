// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class LocalUser extends DataClass implements Insertable<LocalUser> {
  final int userId;
  final String userFullName;
  final String userPhone;
  final String userPass;
  final int userAccessGranted;
  final String userCreatedAt;
  final String userToken;
  final String userRefreshToken;
  LocalUser(
      {@required this.userId,
      @required this.userFullName,
      @required this.userPhone,
      @required this.userPass,
      @required this.userAccessGranted,
      @required this.userCreatedAt,
      @required this.userToken,
      @required this.userRefreshToken});
  factory LocalUser.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return LocalUser(
      userId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      userFullName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_full_name']),
      userPhone: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_phone']),
      userPass: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_pass']),
      userAccessGranted: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}user_access_granted']),
      userCreatedAt: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_created_at']),
      userToken: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_token']),
      userRefreshToken: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}user_refresh_token']),
    );
  }
  factory LocalUser.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return LocalUser(
      userId: serializer.fromJson<int>(json['userId']),
      userFullName: serializer.fromJson<String>(json['userFullName']),
      userPhone: serializer.fromJson<String>(json['userPhone']),
      userPass: serializer.fromJson<String>(json['userPass']),
      userAccessGranted: serializer.fromJson<int>(json['userAccessGranted']),
      userCreatedAt: serializer.fromJson<String>(json['userCreatedAt']),
      userToken: serializer.fromJson<String>(json['userToken']),
      userRefreshToken: serializer.fromJson<String>(json['userRefreshToken']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<int>(userId),
      'userFullName': serializer.toJson<String>(userFullName),
      'userPhone': serializer.toJson<String>(userPhone),
      'userPass': serializer.toJson<String>(userPass),
      'userAccessGranted': serializer.toJson<int>(userAccessGranted),
      'userCreatedAt': serializer.toJson<String>(userCreatedAt),
      'userToken': serializer.toJson<String>(userToken),
      'userRefreshToken': serializer.toJson<String>(userRefreshToken),
    };
  }

  @override
  LocalUsersCompanion createCompanion(bool nullToAbsent) {
    return LocalUsersCompanion(
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      userFullName: userFullName == null && nullToAbsent
          ? const Value.absent()
          : Value(userFullName),
      userPhone: userPhone == null && nullToAbsent
          ? const Value.absent()
          : Value(userPhone),
      userPass: userPass == null && nullToAbsent
          ? const Value.absent()
          : Value(userPass),
      userAccessGranted: userAccessGranted == null && nullToAbsent
          ? const Value.absent()
          : Value(userAccessGranted),
      userCreatedAt: userCreatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(userCreatedAt),
      userToken: userToken == null && nullToAbsent
          ? const Value.absent()
          : Value(userToken),
      userRefreshToken: userRefreshToken == null && nullToAbsent
          ? const Value.absent()
          : Value(userRefreshToken),
    );
  }

  LocalUser copyWith(
          {int userId,
          String userFullName,
          String userPhone,
          String userPass,
          int userAccessGranted,
          String userCreatedAt,
          String userToken,
          String userRefreshToken}) =>
      LocalUser(
        userId: userId ?? this.userId,
        userFullName: userFullName ?? this.userFullName,
        userPhone: userPhone ?? this.userPhone,
        userPass: userPass ?? this.userPass,
        userAccessGranted: userAccessGranted ?? this.userAccessGranted,
        userCreatedAt: userCreatedAt ?? this.userCreatedAt,
        userToken: userToken ?? this.userToken,
        userRefreshToken: userRefreshToken ?? this.userRefreshToken,
      );
  @override
  String toString() {
    return (StringBuffer('LocalUser(')
          ..write('userId: $userId, ')
          ..write('userFullName: $userFullName, ')
          ..write('userPhone: $userPhone, ')
          ..write('userPass: $userPass, ')
          ..write('userAccessGranted: $userAccessGranted, ')
          ..write('userCreatedAt: $userCreatedAt, ')
          ..write('userToken: $userToken, ')
          ..write('userRefreshToken: $userRefreshToken')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      userId.hashCode,
      $mrjc(
          userFullName.hashCode,
          $mrjc(
              userPhone.hashCode,
              $mrjc(
                  userPass.hashCode,
                  $mrjc(
                      userAccessGranted.hashCode,
                      $mrjc(
                          userCreatedAt.hashCode,
                          $mrjc(userToken.hashCode,
                              userRefreshToken.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is LocalUser &&
          other.userId == this.userId &&
          other.userFullName == this.userFullName &&
          other.userPhone == this.userPhone &&
          other.userPass == this.userPass &&
          other.userAccessGranted == this.userAccessGranted &&
          other.userCreatedAt == this.userCreatedAt &&
          other.userToken == this.userToken &&
          other.userRefreshToken == this.userRefreshToken);
}

class LocalUsersCompanion extends UpdateCompanion<LocalUser> {
  final Value<int> userId;
  final Value<String> userFullName;
  final Value<String> userPhone;
  final Value<String> userPass;
  final Value<int> userAccessGranted;
  final Value<String> userCreatedAt;
  final Value<String> userToken;
  final Value<String> userRefreshToken;
  const LocalUsersCompanion({
    this.userId = const Value.absent(),
    this.userFullName = const Value.absent(),
    this.userPhone = const Value.absent(),
    this.userPass = const Value.absent(),
    this.userAccessGranted = const Value.absent(),
    this.userCreatedAt = const Value.absent(),
    this.userToken = const Value.absent(),
    this.userRefreshToken = const Value.absent(),
  });
  LocalUsersCompanion.insert({
    @required int userId,
    @required String userFullName,
    @required String userPhone,
    @required String userPass,
    @required int userAccessGranted,
    @required String userCreatedAt,
    @required String userToken,
    @required String userRefreshToken,
  })  : userId = Value(userId),
        userFullName = Value(userFullName),
        userPhone = Value(userPhone),
        userPass = Value(userPass),
        userAccessGranted = Value(userAccessGranted),
        userCreatedAt = Value(userCreatedAt),
        userToken = Value(userToken),
        userRefreshToken = Value(userRefreshToken);
  LocalUsersCompanion copyWith(
      {Value<int> userId,
      Value<String> userFullName,
      Value<String> userPhone,
      Value<String> userPass,
      Value<int> userAccessGranted,
      Value<String> userCreatedAt,
      Value<String> userToken,
      Value<String> userRefreshToken}) {
    return LocalUsersCompanion(
      userId: userId ?? this.userId,
      userFullName: userFullName ?? this.userFullName,
      userPhone: userPhone ?? this.userPhone,
      userPass: userPass ?? this.userPass,
      userAccessGranted: userAccessGranted ?? this.userAccessGranted,
      userCreatedAt: userCreatedAt ?? this.userCreatedAt,
      userToken: userToken ?? this.userToken,
      userRefreshToken: userRefreshToken ?? this.userRefreshToken,
    );
  }
}

class $LocalUsersTable extends LocalUsers
    with TableInfo<$LocalUsersTable, LocalUser> {
  final GeneratedDatabase _db;
  final String _alias;
  $LocalUsersTable(this._db, [this._alias]);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedIntColumn _userId;
  @override
  GeneratedIntColumn get userId => _userId ??= _constructUserId();
  GeneratedIntColumn _constructUserId() {
    return GeneratedIntColumn(
      'user_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userFullNameMeta =
      const VerificationMeta('userFullName');
  GeneratedTextColumn _userFullName;
  @override
  GeneratedTextColumn get userFullName =>
      _userFullName ??= _constructUserFullName();
  GeneratedTextColumn _constructUserFullName() {
    return GeneratedTextColumn(
      'user_full_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userPhoneMeta = const VerificationMeta('userPhone');
  GeneratedTextColumn _userPhone;
  @override
  GeneratedTextColumn get userPhone => _userPhone ??= _constructUserPhone();
  GeneratedTextColumn _constructUserPhone() {
    return GeneratedTextColumn(
      'user_phone',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userPassMeta = const VerificationMeta('userPass');
  GeneratedTextColumn _userPass;
  @override
  GeneratedTextColumn get userPass => _userPass ??= _constructUserPass();
  GeneratedTextColumn _constructUserPass() {
    return GeneratedTextColumn(
      'user_pass',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userAccessGrantedMeta =
      const VerificationMeta('userAccessGranted');
  GeneratedIntColumn _userAccessGranted;
  @override
  GeneratedIntColumn get userAccessGranted =>
      _userAccessGranted ??= _constructUserAccessGranted();
  GeneratedIntColumn _constructUserAccessGranted() {
    return GeneratedIntColumn(
      'user_access_granted',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userCreatedAtMeta =
      const VerificationMeta('userCreatedAt');
  GeneratedTextColumn _userCreatedAt;
  @override
  GeneratedTextColumn get userCreatedAt =>
      _userCreatedAt ??= _constructUserCreatedAt();
  GeneratedTextColumn _constructUserCreatedAt() {
    return GeneratedTextColumn(
      'user_created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userTokenMeta = const VerificationMeta('userToken');
  GeneratedTextColumn _userToken;
  @override
  GeneratedTextColumn get userToken => _userToken ??= _constructUserToken();
  GeneratedTextColumn _constructUserToken() {
    return GeneratedTextColumn(
      'user_token',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userRefreshTokenMeta =
      const VerificationMeta('userRefreshToken');
  GeneratedTextColumn _userRefreshToken;
  @override
  GeneratedTextColumn get userRefreshToken =>
      _userRefreshToken ??= _constructUserRefreshToken();
  GeneratedTextColumn _constructUserRefreshToken() {
    return GeneratedTextColumn(
      'user_refresh_token',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        userId,
        userFullName,
        userPhone,
        userPass,
        userAccessGranted,
        userCreatedAt,
        userToken,
        userRefreshToken
      ];
  @override
  $LocalUsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'local_users';
  @override
  final String actualTableName = 'local_users';
  @override
  VerificationContext validateIntegrity(LocalUsersCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.userId.present) {
      context.handle(
          _userIdMeta, userId.isAcceptableValue(d.userId.value, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (d.userFullName.present) {
      context.handle(
          _userFullNameMeta,
          userFullName.isAcceptableValue(
              d.userFullName.value, _userFullNameMeta));
    } else if (isInserting) {
      context.missing(_userFullNameMeta);
    }
    if (d.userPhone.present) {
      context.handle(_userPhoneMeta,
          userPhone.isAcceptableValue(d.userPhone.value, _userPhoneMeta));
    } else if (isInserting) {
      context.missing(_userPhoneMeta);
    }
    if (d.userPass.present) {
      context.handle(_userPassMeta,
          userPass.isAcceptableValue(d.userPass.value, _userPassMeta));
    } else if (isInserting) {
      context.missing(_userPassMeta);
    }
    if (d.userAccessGranted.present) {
      context.handle(
          _userAccessGrantedMeta,
          userAccessGranted.isAcceptableValue(
              d.userAccessGranted.value, _userAccessGrantedMeta));
    } else if (isInserting) {
      context.missing(_userAccessGrantedMeta);
    }
    if (d.userCreatedAt.present) {
      context.handle(
          _userCreatedAtMeta,
          userCreatedAt.isAcceptableValue(
              d.userCreatedAt.value, _userCreatedAtMeta));
    } else if (isInserting) {
      context.missing(_userCreatedAtMeta);
    }
    if (d.userToken.present) {
      context.handle(_userTokenMeta,
          userToken.isAcceptableValue(d.userToken.value, _userTokenMeta));
    } else if (isInserting) {
      context.missing(_userTokenMeta);
    }
    if (d.userRefreshToken.present) {
      context.handle(
          _userRefreshTokenMeta,
          userRefreshToken.isAcceptableValue(
              d.userRefreshToken.value, _userRefreshTokenMeta));
    } else if (isInserting) {
      context.missing(_userRefreshTokenMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  LocalUser map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return LocalUser.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(LocalUsersCompanion d) {
    final map = <String, Variable>{};
    if (d.userId.present) {
      map['user_id'] = Variable<int, IntType>(d.userId.value);
    }
    if (d.userFullName.present) {
      map['user_full_name'] =
          Variable<String, StringType>(d.userFullName.value);
    }
    if (d.userPhone.present) {
      map['user_phone'] = Variable<String, StringType>(d.userPhone.value);
    }
    if (d.userPass.present) {
      map['user_pass'] = Variable<String, StringType>(d.userPass.value);
    }
    if (d.userAccessGranted.present) {
      map['user_access_granted'] =
          Variable<int, IntType>(d.userAccessGranted.value);
    }
    if (d.userCreatedAt.present) {
      map['user_created_at'] =
          Variable<String, StringType>(d.userCreatedAt.value);
    }
    if (d.userToken.present) {
      map['user_token'] = Variable<String, StringType>(d.userToken.value);
    }
    if (d.userRefreshToken.present) {
      map['user_refresh_token'] =
          Variable<String, StringType>(d.userRefreshToken.value);
    }
    return map;
  }

  @override
  $LocalUsersTable createAlias(String alias) {
    return $LocalUsersTable(_db, alias);
  }
}

class LocalAuth extends DataClass implements Insertable<LocalAuth> {
  final int userId;
  final String userFullName;
  final String userPhone;
  final String userPass;
  final int userAccessGranted;
  final String userCreatedAt;
  final String userToken;
  final String userRefreshToken;
  LocalAuth(
      {@required this.userId,
      @required this.userFullName,
      @required this.userPhone,
      @required this.userPass,
      @required this.userAccessGranted,
      @required this.userCreatedAt,
      @required this.userToken,
      @required this.userRefreshToken});
  factory LocalAuth.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return LocalAuth(
      userId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      userFullName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_full_name']),
      userPhone: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_phone']),
      userPass: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_pass']),
      userAccessGranted: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}user_access_granted']),
      userCreatedAt: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_created_at']),
      userToken: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_token']),
      userRefreshToken: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}user_refresh_token']),
    );
  }
  factory LocalAuth.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return LocalAuth(
      userId: serializer.fromJson<int>(json['userId']),
      userFullName: serializer.fromJson<String>(json['userFullName']),
      userPhone: serializer.fromJson<String>(json['userPhone']),
      userPass: serializer.fromJson<String>(json['userPass']),
      userAccessGranted: serializer.fromJson<int>(json['userAccessGranted']),
      userCreatedAt: serializer.fromJson<String>(json['userCreatedAt']),
      userToken: serializer.fromJson<String>(json['userToken']),
      userRefreshToken: serializer.fromJson<String>(json['userRefreshToken']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<int>(userId),
      'userFullName': serializer.toJson<String>(userFullName),
      'userPhone': serializer.toJson<String>(userPhone),
      'userPass': serializer.toJson<String>(userPass),
      'userAccessGranted': serializer.toJson<int>(userAccessGranted),
      'userCreatedAt': serializer.toJson<String>(userCreatedAt),
      'userToken': serializer.toJson<String>(userToken),
      'userRefreshToken': serializer.toJson<String>(userRefreshToken),
    };
  }

  @override
  LocalAuthsCompanion createCompanion(bool nullToAbsent) {
    return LocalAuthsCompanion(
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      userFullName: userFullName == null && nullToAbsent
          ? const Value.absent()
          : Value(userFullName),
      userPhone: userPhone == null && nullToAbsent
          ? const Value.absent()
          : Value(userPhone),
      userPass: userPass == null && nullToAbsent
          ? const Value.absent()
          : Value(userPass),
      userAccessGranted: userAccessGranted == null && nullToAbsent
          ? const Value.absent()
          : Value(userAccessGranted),
      userCreatedAt: userCreatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(userCreatedAt),
      userToken: userToken == null && nullToAbsent
          ? const Value.absent()
          : Value(userToken),
      userRefreshToken: userRefreshToken == null && nullToAbsent
          ? const Value.absent()
          : Value(userRefreshToken),
    );
  }

  LocalAuth copyWith(
          {int userId,
          String userFullName,
          String userPhone,
          String userPass,
          int userAccessGranted,
          String userCreatedAt,
          String userToken,
          String userRefreshToken}) =>
      LocalAuth(
        userId: userId ?? this.userId,
        userFullName: userFullName ?? this.userFullName,
        userPhone: userPhone ?? this.userPhone,
        userPass: userPass ?? this.userPass,
        userAccessGranted: userAccessGranted ?? this.userAccessGranted,
        userCreatedAt: userCreatedAt ?? this.userCreatedAt,
        userToken: userToken ?? this.userToken,
        userRefreshToken: userRefreshToken ?? this.userRefreshToken,
      );
  @override
  String toString() {
    return (StringBuffer('LocalAuth(')
          ..write('userId: $userId, ')
          ..write('userFullName: $userFullName, ')
          ..write('userPhone: $userPhone, ')
          ..write('userPass: $userPass, ')
          ..write('userAccessGranted: $userAccessGranted, ')
          ..write('userCreatedAt: $userCreatedAt, ')
          ..write('userToken: $userToken, ')
          ..write('userRefreshToken: $userRefreshToken')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      userId.hashCode,
      $mrjc(
          userFullName.hashCode,
          $mrjc(
              userPhone.hashCode,
              $mrjc(
                  userPass.hashCode,
                  $mrjc(
                      userAccessGranted.hashCode,
                      $mrjc(
                          userCreatedAt.hashCode,
                          $mrjc(userToken.hashCode,
                              userRefreshToken.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is LocalAuth &&
          other.userId == this.userId &&
          other.userFullName == this.userFullName &&
          other.userPhone == this.userPhone &&
          other.userPass == this.userPass &&
          other.userAccessGranted == this.userAccessGranted &&
          other.userCreatedAt == this.userCreatedAt &&
          other.userToken == this.userToken &&
          other.userRefreshToken == this.userRefreshToken);
}

class LocalAuthsCompanion extends UpdateCompanion<LocalAuth> {
  final Value<int> userId;
  final Value<String> userFullName;
  final Value<String> userPhone;
  final Value<String> userPass;
  final Value<int> userAccessGranted;
  final Value<String> userCreatedAt;
  final Value<String> userToken;
  final Value<String> userRefreshToken;
  const LocalAuthsCompanion({
    this.userId = const Value.absent(),
    this.userFullName = const Value.absent(),
    this.userPhone = const Value.absent(),
    this.userPass = const Value.absent(),
    this.userAccessGranted = const Value.absent(),
    this.userCreatedAt = const Value.absent(),
    this.userToken = const Value.absent(),
    this.userRefreshToken = const Value.absent(),
  });
  LocalAuthsCompanion.insert({
    @required int userId,
    @required String userFullName,
    @required String userPhone,
    @required String userPass,
    @required int userAccessGranted,
    @required String userCreatedAt,
    @required String userToken,
    @required String userRefreshToken,
  })  : userId = Value(userId),
        userFullName = Value(userFullName),
        userPhone = Value(userPhone),
        userPass = Value(userPass),
        userAccessGranted = Value(userAccessGranted),
        userCreatedAt = Value(userCreatedAt),
        userToken = Value(userToken),
        userRefreshToken = Value(userRefreshToken);
  LocalAuthsCompanion copyWith(
      {Value<int> userId,
      Value<String> userFullName,
      Value<String> userPhone,
      Value<String> userPass,
      Value<int> userAccessGranted,
      Value<String> userCreatedAt,
      Value<String> userToken,
      Value<String> userRefreshToken}) {
    return LocalAuthsCompanion(
      userId: userId ?? this.userId,
      userFullName: userFullName ?? this.userFullName,
      userPhone: userPhone ?? this.userPhone,
      userPass: userPass ?? this.userPass,
      userAccessGranted: userAccessGranted ?? this.userAccessGranted,
      userCreatedAt: userCreatedAt ?? this.userCreatedAt,
      userToken: userToken ?? this.userToken,
      userRefreshToken: userRefreshToken ?? this.userRefreshToken,
    );
  }
}

class $LocalAuthsTable extends LocalAuths
    with TableInfo<$LocalAuthsTable, LocalAuth> {
  final GeneratedDatabase _db;
  final String _alias;
  $LocalAuthsTable(this._db, [this._alias]);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedIntColumn _userId;
  @override
  GeneratedIntColumn get userId => _userId ??= _constructUserId();
  GeneratedIntColumn _constructUserId() {
    return GeneratedIntColumn(
      'user_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userFullNameMeta =
      const VerificationMeta('userFullName');
  GeneratedTextColumn _userFullName;
  @override
  GeneratedTextColumn get userFullName =>
      _userFullName ??= _constructUserFullName();
  GeneratedTextColumn _constructUserFullName() {
    return GeneratedTextColumn(
      'user_full_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userPhoneMeta = const VerificationMeta('userPhone');
  GeneratedTextColumn _userPhone;
  @override
  GeneratedTextColumn get userPhone => _userPhone ??= _constructUserPhone();
  GeneratedTextColumn _constructUserPhone() {
    return GeneratedTextColumn(
      'user_phone',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userPassMeta = const VerificationMeta('userPass');
  GeneratedTextColumn _userPass;
  @override
  GeneratedTextColumn get userPass => _userPass ??= _constructUserPass();
  GeneratedTextColumn _constructUserPass() {
    return GeneratedTextColumn(
      'user_pass',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userAccessGrantedMeta =
      const VerificationMeta('userAccessGranted');
  GeneratedIntColumn _userAccessGranted;
  @override
  GeneratedIntColumn get userAccessGranted =>
      _userAccessGranted ??= _constructUserAccessGranted();
  GeneratedIntColumn _constructUserAccessGranted() {
    return GeneratedIntColumn(
      'user_access_granted',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userCreatedAtMeta =
      const VerificationMeta('userCreatedAt');
  GeneratedTextColumn _userCreatedAt;
  @override
  GeneratedTextColumn get userCreatedAt =>
      _userCreatedAt ??= _constructUserCreatedAt();
  GeneratedTextColumn _constructUserCreatedAt() {
    return GeneratedTextColumn(
      'user_created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userTokenMeta = const VerificationMeta('userToken');
  GeneratedTextColumn _userToken;
  @override
  GeneratedTextColumn get userToken => _userToken ??= _constructUserToken();
  GeneratedTextColumn _constructUserToken() {
    return GeneratedTextColumn(
      'user_token',
      $tableName,
      false,
    );
  }

  final VerificationMeta _userRefreshTokenMeta =
      const VerificationMeta('userRefreshToken');
  GeneratedTextColumn _userRefreshToken;
  @override
  GeneratedTextColumn get userRefreshToken =>
      _userRefreshToken ??= _constructUserRefreshToken();
  GeneratedTextColumn _constructUserRefreshToken() {
    return GeneratedTextColumn(
      'user_refresh_token',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        userId,
        userFullName,
        userPhone,
        userPass,
        userAccessGranted,
        userCreatedAt,
        userToken,
        userRefreshToken
      ];
  @override
  $LocalAuthsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'local_auths';
  @override
  final String actualTableName = 'local_auths';
  @override
  VerificationContext validateIntegrity(LocalAuthsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.userId.present) {
      context.handle(
          _userIdMeta, userId.isAcceptableValue(d.userId.value, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (d.userFullName.present) {
      context.handle(
          _userFullNameMeta,
          userFullName.isAcceptableValue(
              d.userFullName.value, _userFullNameMeta));
    } else if (isInserting) {
      context.missing(_userFullNameMeta);
    }
    if (d.userPhone.present) {
      context.handle(_userPhoneMeta,
          userPhone.isAcceptableValue(d.userPhone.value, _userPhoneMeta));
    } else if (isInserting) {
      context.missing(_userPhoneMeta);
    }
    if (d.userPass.present) {
      context.handle(_userPassMeta,
          userPass.isAcceptableValue(d.userPass.value, _userPassMeta));
    } else if (isInserting) {
      context.missing(_userPassMeta);
    }
    if (d.userAccessGranted.present) {
      context.handle(
          _userAccessGrantedMeta,
          userAccessGranted.isAcceptableValue(
              d.userAccessGranted.value, _userAccessGrantedMeta));
    } else if (isInserting) {
      context.missing(_userAccessGrantedMeta);
    }
    if (d.userCreatedAt.present) {
      context.handle(
          _userCreatedAtMeta,
          userCreatedAt.isAcceptableValue(
              d.userCreatedAt.value, _userCreatedAtMeta));
    } else if (isInserting) {
      context.missing(_userCreatedAtMeta);
    }
    if (d.userToken.present) {
      context.handle(_userTokenMeta,
          userToken.isAcceptableValue(d.userToken.value, _userTokenMeta));
    } else if (isInserting) {
      context.missing(_userTokenMeta);
    }
    if (d.userRefreshToken.present) {
      context.handle(
          _userRefreshTokenMeta,
          userRefreshToken.isAcceptableValue(
              d.userRefreshToken.value, _userRefreshTokenMeta));
    } else if (isInserting) {
      context.missing(_userRefreshTokenMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  LocalAuth map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return LocalAuth.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(LocalAuthsCompanion d) {
    final map = <String, Variable>{};
    if (d.userId.present) {
      map['user_id'] = Variable<int, IntType>(d.userId.value);
    }
    if (d.userFullName.present) {
      map['user_full_name'] =
          Variable<String, StringType>(d.userFullName.value);
    }
    if (d.userPhone.present) {
      map['user_phone'] = Variable<String, StringType>(d.userPhone.value);
    }
    if (d.userPass.present) {
      map['user_pass'] = Variable<String, StringType>(d.userPass.value);
    }
    if (d.userAccessGranted.present) {
      map['user_access_granted'] =
          Variable<int, IntType>(d.userAccessGranted.value);
    }
    if (d.userCreatedAt.present) {
      map['user_created_at'] =
          Variable<String, StringType>(d.userCreatedAt.value);
    }
    if (d.userToken.present) {
      map['user_token'] = Variable<String, StringType>(d.userToken.value);
    }
    if (d.userRefreshToken.present) {
      map['user_refresh_token'] =
          Variable<String, StringType>(d.userRefreshToken.value);
    }
    return map;
  }

  @override
  $LocalAuthsTable createAlias(String alias) {
    return $LocalAuthsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $LocalUsersTable _localUsers;
  $LocalUsersTable get localUsers => _localUsers ??= $LocalUsersTable(this);
  $LocalAuthsTable _localAuths;
  $LocalAuthsTable get localAuths => _localAuths ??= $LocalAuthsTable(this);
  LocalUserDao _localUserDao;
  LocalUserDao get localUserDao =>
      _localUserDao ??= LocalUserDao(this as AppDatabase);
  LocalAuthDao _localAuthDao;
  LocalAuthDao get localAuthDao =>
      _localAuthDao ??= LocalAuthDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [localUsers, localAuths];
}
