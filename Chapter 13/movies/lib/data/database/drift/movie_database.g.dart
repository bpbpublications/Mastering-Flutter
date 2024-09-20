// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_database.dart';

// ignore_for_file: type=lint
class $DriftFavoriteTable extends DriftFavorite
    with TableInfo<$DriftFavoriteTable, DriftFavoriteData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftFavoriteTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _movieIdMeta =
      const VerificationMeta('movieId');
  @override
  late final GeneratedColumn<int> movieId = GeneratedColumn<int>(
      'movie_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _backdropPathMeta =
      const VerificationMeta('backdropPath');
  @override
  late final GeneratedColumn<String> backdropPath = GeneratedColumn<String>(
      'backdrop_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _posterPathMeta =
      const VerificationMeta('posterPath');
  @override
  late final GeneratedColumn<String> posterPath = GeneratedColumn<String>(
      'poster_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _favoriteMeta =
      const VerificationMeta('favorite');
  @override
  late final GeneratedColumn<bool> favorite = GeneratedColumn<bool>(
      'favorite', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("favorite" IN (0, 1))'));
  static const VerificationMeta _popularityMeta =
      const VerificationMeta('popularity');
  @override
  late final GeneratedColumn<double> popularity = GeneratedColumn<double>(
      'popularity', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _releaseDateMeta =
      const VerificationMeta('releaseDate');
  @override
  late final GeneratedColumn<DateTime> releaseDate = GeneratedColumn<DateTime>(
      'release_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _overviewMeta =
      const VerificationMeta('overview');
  @override
  late final GeneratedColumn<String> overview = GeneratedColumn<String>(
      'overview', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        movieId,
        backdropPath,
        posterPath,
        favorite,
        popularity,
        releaseDate,
        title,
        overview
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'drift_favorite';
  @override
  VerificationContext validateIntegrity(Insertable<DriftFavoriteData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('movie_id')) {
      context.handle(_movieIdMeta,
          movieId.isAcceptableOrUnknown(data['movie_id']!, _movieIdMeta));
    } else if (isInserting) {
      context.missing(_movieIdMeta);
    }
    if (data.containsKey('backdrop_path')) {
      context.handle(
          _backdropPathMeta,
          backdropPath.isAcceptableOrUnknown(
              data['backdrop_path']!, _backdropPathMeta));
    } else if (isInserting) {
      context.missing(_backdropPathMeta);
    }
    if (data.containsKey('poster_path')) {
      context.handle(
          _posterPathMeta,
          posterPath.isAcceptableOrUnknown(
              data['poster_path']!, _posterPathMeta));
    } else if (isInserting) {
      context.missing(_posterPathMeta);
    }
    if (data.containsKey('favorite')) {
      context.handle(_favoriteMeta,
          favorite.isAcceptableOrUnknown(data['favorite']!, _favoriteMeta));
    } else if (isInserting) {
      context.missing(_favoriteMeta);
    }
    if (data.containsKey('popularity')) {
      context.handle(
          _popularityMeta,
          popularity.isAcceptableOrUnknown(
              data['popularity']!, _popularityMeta));
    } else if (isInserting) {
      context.missing(_popularityMeta);
    }
    if (data.containsKey('release_date')) {
      context.handle(
          _releaseDateMeta,
          releaseDate.isAcceptableOrUnknown(
              data['release_date']!, _releaseDateMeta));
    } else if (isInserting) {
      context.missing(_releaseDateMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('overview')) {
      context.handle(_overviewMeta,
          overview.isAcceptableOrUnknown(data['overview']!, _overviewMeta));
    } else if (isInserting) {
      context.missing(_overviewMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftFavoriteData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftFavoriteData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      movieId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}movie_id'])!,
      backdropPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}backdrop_path'])!,
      posterPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}poster_path'])!,
      favorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}favorite'])!,
      popularity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}popularity'])!,
      releaseDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}release_date'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      overview: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}overview'])!,
    );
  }

  @override
  $DriftFavoriteTable createAlias(String alias) {
    return $DriftFavoriteTable(attachedDatabase, alias);
  }
}

class DriftFavoriteData extends DataClass
    implements Insertable<DriftFavoriteData> {
  final int id;
  final int movieId;
  final String backdropPath;
  final String posterPath;
  final bool favorite;
  final double popularity;
  final DateTime releaseDate;
  final String title;
  final String overview;
  const DriftFavoriteData(
      {required this.id,
      required this.movieId,
      required this.backdropPath,
      required this.posterPath,
      required this.favorite,
      required this.popularity,
      required this.releaseDate,
      required this.title,
      required this.overview});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['movie_id'] = Variable<int>(movieId);
    map['backdrop_path'] = Variable<String>(backdropPath);
    map['poster_path'] = Variable<String>(posterPath);
    map['favorite'] = Variable<bool>(favorite);
    map['popularity'] = Variable<double>(popularity);
    map['release_date'] = Variable<DateTime>(releaseDate);
    map['title'] = Variable<String>(title);
    map['overview'] = Variable<String>(overview);
    return map;
  }

  DriftFavoriteCompanion toCompanion(bool nullToAbsent) {
    return DriftFavoriteCompanion(
      id: Value(id),
      movieId: Value(movieId),
      backdropPath: Value(backdropPath),
      posterPath: Value(posterPath),
      favorite: Value(favorite),
      popularity: Value(popularity),
      releaseDate: Value(releaseDate),
      title: Value(title),
      overview: Value(overview),
    );
  }

  factory DriftFavoriteData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftFavoriteData(
      id: serializer.fromJson<int>(json['id']),
      movieId: serializer.fromJson<int>(json['movieId']),
      backdropPath: serializer.fromJson<String>(json['backdropPath']),
      posterPath: serializer.fromJson<String>(json['posterPath']),
      favorite: serializer.fromJson<bool>(json['favorite']),
      popularity: serializer.fromJson<double>(json['popularity']),
      releaseDate: serializer.fromJson<DateTime>(json['releaseDate']),
      title: serializer.fromJson<String>(json['title']),
      overview: serializer.fromJson<String>(json['overview']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'movieId': serializer.toJson<int>(movieId),
      'backdropPath': serializer.toJson<String>(backdropPath),
      'posterPath': serializer.toJson<String>(posterPath),
      'favorite': serializer.toJson<bool>(favorite),
      'popularity': serializer.toJson<double>(popularity),
      'releaseDate': serializer.toJson<DateTime>(releaseDate),
      'title': serializer.toJson<String>(title),
      'overview': serializer.toJson<String>(overview),
    };
  }

  DriftFavoriteData copyWith(
          {int? id,
          int? movieId,
          String? backdropPath,
          String? posterPath,
          bool? favorite,
          double? popularity,
          DateTime? releaseDate,
          String? title,
          String? overview}) =>
      DriftFavoriteData(
        id: id ?? this.id,
        movieId: movieId ?? this.movieId,
        backdropPath: backdropPath ?? this.backdropPath,
        posterPath: posterPath ?? this.posterPath,
        favorite: favorite ?? this.favorite,
        popularity: popularity ?? this.popularity,
        releaseDate: releaseDate ?? this.releaseDate,
        title: title ?? this.title,
        overview: overview ?? this.overview,
      );
  DriftFavoriteData copyWithCompanion(DriftFavoriteCompanion data) {
    return DriftFavoriteData(
      id: data.id.present ? data.id.value : this.id,
      movieId: data.movieId.present ? data.movieId.value : this.movieId,
      backdropPath: data.backdropPath.present
          ? data.backdropPath.value
          : this.backdropPath,
      posterPath:
          data.posterPath.present ? data.posterPath.value : this.posterPath,
      favorite: data.favorite.present ? data.favorite.value : this.favorite,
      popularity:
          data.popularity.present ? data.popularity.value : this.popularity,
      releaseDate:
          data.releaseDate.present ? data.releaseDate.value : this.releaseDate,
      title: data.title.present ? data.title.value : this.title,
      overview: data.overview.present ? data.overview.value : this.overview,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DriftFavoriteData(')
          ..write('id: $id, ')
          ..write('movieId: $movieId, ')
          ..write('backdropPath: $backdropPath, ')
          ..write('posterPath: $posterPath, ')
          ..write('favorite: $favorite, ')
          ..write('popularity: $popularity, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('title: $title, ')
          ..write('overview: $overview')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, movieId, backdropPath, posterPath,
      favorite, popularity, releaseDate, title, overview);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftFavoriteData &&
          other.id == this.id &&
          other.movieId == this.movieId &&
          other.backdropPath == this.backdropPath &&
          other.posterPath == this.posterPath &&
          other.favorite == this.favorite &&
          other.popularity == this.popularity &&
          other.releaseDate == this.releaseDate &&
          other.title == this.title &&
          other.overview == this.overview);
}

class DriftFavoriteCompanion extends UpdateCompanion<DriftFavoriteData> {
  final Value<int> id;
  final Value<int> movieId;
  final Value<String> backdropPath;
  final Value<String> posterPath;
  final Value<bool> favorite;
  final Value<double> popularity;
  final Value<DateTime> releaseDate;
  final Value<String> title;
  final Value<String> overview;
  const DriftFavoriteCompanion({
    this.id = const Value.absent(),
    this.movieId = const Value.absent(),
    this.backdropPath = const Value.absent(),
    this.posterPath = const Value.absent(),
    this.favorite = const Value.absent(),
    this.popularity = const Value.absent(),
    this.releaseDate = const Value.absent(),
    this.title = const Value.absent(),
    this.overview = const Value.absent(),
  });
  DriftFavoriteCompanion.insert({
    this.id = const Value.absent(),
    required int movieId,
    required String backdropPath,
    required String posterPath,
    required bool favorite,
    required double popularity,
    required DateTime releaseDate,
    required String title,
    required String overview,
  })  : movieId = Value(movieId),
        backdropPath = Value(backdropPath),
        posterPath = Value(posterPath),
        favorite = Value(favorite),
        popularity = Value(popularity),
        releaseDate = Value(releaseDate),
        title = Value(title),
        overview = Value(overview);
  static Insertable<DriftFavoriteData> custom({
    Expression<int>? id,
    Expression<int>? movieId,
    Expression<String>? backdropPath,
    Expression<String>? posterPath,
    Expression<bool>? favorite,
    Expression<double>? popularity,
    Expression<DateTime>? releaseDate,
    Expression<String>? title,
    Expression<String>? overview,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (movieId != null) 'movie_id': movieId,
      if (backdropPath != null) 'backdrop_path': backdropPath,
      if (posterPath != null) 'poster_path': posterPath,
      if (favorite != null) 'favorite': favorite,
      if (popularity != null) 'popularity': popularity,
      if (releaseDate != null) 'release_date': releaseDate,
      if (title != null) 'title': title,
      if (overview != null) 'overview': overview,
    });
  }

  DriftFavoriteCompanion copyWith(
      {Value<int>? id,
      Value<int>? movieId,
      Value<String>? backdropPath,
      Value<String>? posterPath,
      Value<bool>? favorite,
      Value<double>? popularity,
      Value<DateTime>? releaseDate,
      Value<String>? title,
      Value<String>? overview}) {
    return DriftFavoriteCompanion(
      id: id ?? this.id,
      movieId: movieId ?? this.movieId,
      backdropPath: backdropPath ?? this.backdropPath,
      posterPath: posterPath ?? this.posterPath,
      favorite: favorite ?? this.favorite,
      popularity: popularity ?? this.popularity,
      releaseDate: releaseDate ?? this.releaseDate,
      title: title ?? this.title,
      overview: overview ?? this.overview,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (movieId.present) {
      map['movie_id'] = Variable<int>(movieId.value);
    }
    if (backdropPath.present) {
      map['backdrop_path'] = Variable<String>(backdropPath.value);
    }
    if (posterPath.present) {
      map['poster_path'] = Variable<String>(posterPath.value);
    }
    if (favorite.present) {
      map['favorite'] = Variable<bool>(favorite.value);
    }
    if (popularity.present) {
      map['popularity'] = Variable<double>(popularity.value);
    }
    if (releaseDate.present) {
      map['release_date'] = Variable<DateTime>(releaseDate.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (overview.present) {
      map['overview'] = Variable<String>(overview.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftFavoriteCompanion(')
          ..write('id: $id, ')
          ..write('movieId: $movieId, ')
          ..write('backdropPath: $backdropPath, ')
          ..write('posterPath: $posterPath, ')
          ..write('favorite: $favorite, ')
          ..write('popularity: $popularity, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('title: $title, ')
          ..write('overview: $overview')
          ..write(')'))
        .toString();
  }
}

class $DriftConfigurationImagesTable extends DriftConfigurationImages
    with TableInfo<$DriftConfigurationImagesTable, DriftConfigurationImage> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftConfigurationImagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _baseUrlMeta =
      const VerificationMeta('baseUrl');
  @override
  late final GeneratedColumn<String> baseUrl = GeneratedColumn<String>(
      'base_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _secureBaseUrlMeta =
      const VerificationMeta('secureBaseUrl');
  @override
  late final GeneratedColumn<String> secureBaseUrl = GeneratedColumn<String>(
      'secure_base_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _backdropSizesMeta =
      const VerificationMeta('backdropSizes');
  @override
  late final GeneratedColumn<String> backdropSizes = GeneratedColumn<String>(
      'backdrop_sizes', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _logoSizesMeta =
      const VerificationMeta('logoSizes');
  @override
  late final GeneratedColumn<String> logoSizes = GeneratedColumn<String>(
      'logo_sizes', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _posterSizesMeta =
      const VerificationMeta('posterSizes');
  @override
  late final GeneratedColumn<String> posterSizes = GeneratedColumn<String>(
      'poster_sizes', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _profileSizesMeta =
      const VerificationMeta('profileSizes');
  @override
  late final GeneratedColumn<String> profileSizes = GeneratedColumn<String>(
      'profile_sizes', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _stillSizesMeta =
      const VerificationMeta('stillSizes');
  @override
  late final GeneratedColumn<String> stillSizes = GeneratedColumn<String>(
      'still_sizes', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        baseUrl,
        secureBaseUrl,
        backdropSizes,
        logoSizes,
        posterSizes,
        profileSizes,
        stillSizes
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'drift_configuration_images';
  @override
  VerificationContext validateIntegrity(
      Insertable<DriftConfigurationImage> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('base_url')) {
      context.handle(_baseUrlMeta,
          baseUrl.isAcceptableOrUnknown(data['base_url']!, _baseUrlMeta));
    } else if (isInserting) {
      context.missing(_baseUrlMeta);
    }
    if (data.containsKey('secure_base_url')) {
      context.handle(
          _secureBaseUrlMeta,
          secureBaseUrl.isAcceptableOrUnknown(
              data['secure_base_url']!, _secureBaseUrlMeta));
    } else if (isInserting) {
      context.missing(_secureBaseUrlMeta);
    }
    if (data.containsKey('backdrop_sizes')) {
      context.handle(
          _backdropSizesMeta,
          backdropSizes.isAcceptableOrUnknown(
              data['backdrop_sizes']!, _backdropSizesMeta));
    } else if (isInserting) {
      context.missing(_backdropSizesMeta);
    }
    if (data.containsKey('logo_sizes')) {
      context.handle(_logoSizesMeta,
          logoSizes.isAcceptableOrUnknown(data['logo_sizes']!, _logoSizesMeta));
    } else if (isInserting) {
      context.missing(_logoSizesMeta);
    }
    if (data.containsKey('poster_sizes')) {
      context.handle(
          _posterSizesMeta,
          posterSizes.isAcceptableOrUnknown(
              data['poster_sizes']!, _posterSizesMeta));
    } else if (isInserting) {
      context.missing(_posterSizesMeta);
    }
    if (data.containsKey('profile_sizes')) {
      context.handle(
          _profileSizesMeta,
          profileSizes.isAcceptableOrUnknown(
              data['profile_sizes']!, _profileSizesMeta));
    } else if (isInserting) {
      context.missing(_profileSizesMeta);
    }
    if (data.containsKey('still_sizes')) {
      context.handle(
          _stillSizesMeta,
          stillSizes.isAcceptableOrUnknown(
              data['still_sizes']!, _stillSizesMeta));
    } else if (isInserting) {
      context.missing(_stillSizesMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftConfigurationImage map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftConfigurationImage(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      baseUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}base_url'])!,
      secureBaseUrl: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}secure_base_url'])!,
      backdropSizes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}backdrop_sizes'])!,
      logoSizes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}logo_sizes'])!,
      posterSizes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}poster_sizes'])!,
      profileSizes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}profile_sizes'])!,
      stillSizes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}still_sizes'])!,
    );
  }

  @override
  $DriftConfigurationImagesTable createAlias(String alias) {
    return $DriftConfigurationImagesTable(attachedDatabase, alias);
  }
}

class DriftConfigurationImage extends DataClass
    implements Insertable<DriftConfigurationImage> {
  final int id;
  final String baseUrl;
  final String secureBaseUrl;
  final String backdropSizes;
  final String logoSizes;
  final String posterSizes;
  final String profileSizes;
  final String stillSizes;
  const DriftConfigurationImage(
      {required this.id,
      required this.baseUrl,
      required this.secureBaseUrl,
      required this.backdropSizes,
      required this.logoSizes,
      required this.posterSizes,
      required this.profileSizes,
      required this.stillSizes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['base_url'] = Variable<String>(baseUrl);
    map['secure_base_url'] = Variable<String>(secureBaseUrl);
    map['backdrop_sizes'] = Variable<String>(backdropSizes);
    map['logo_sizes'] = Variable<String>(logoSizes);
    map['poster_sizes'] = Variable<String>(posterSizes);
    map['profile_sizes'] = Variable<String>(profileSizes);
    map['still_sizes'] = Variable<String>(stillSizes);
    return map;
  }

  DriftConfigurationImagesCompanion toCompanion(bool nullToAbsent) {
    return DriftConfigurationImagesCompanion(
      id: Value(id),
      baseUrl: Value(baseUrl),
      secureBaseUrl: Value(secureBaseUrl),
      backdropSizes: Value(backdropSizes),
      logoSizes: Value(logoSizes),
      posterSizes: Value(posterSizes),
      profileSizes: Value(profileSizes),
      stillSizes: Value(stillSizes),
    );
  }

  factory DriftConfigurationImage.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftConfigurationImage(
      id: serializer.fromJson<int>(json['id']),
      baseUrl: serializer.fromJson<String>(json['baseUrl']),
      secureBaseUrl: serializer.fromJson<String>(json['secureBaseUrl']),
      backdropSizes: serializer.fromJson<String>(json['backdropSizes']),
      logoSizes: serializer.fromJson<String>(json['logoSizes']),
      posterSizes: serializer.fromJson<String>(json['posterSizes']),
      profileSizes: serializer.fromJson<String>(json['profileSizes']),
      stillSizes: serializer.fromJson<String>(json['stillSizes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'baseUrl': serializer.toJson<String>(baseUrl),
      'secureBaseUrl': serializer.toJson<String>(secureBaseUrl),
      'backdropSizes': serializer.toJson<String>(backdropSizes),
      'logoSizes': serializer.toJson<String>(logoSizes),
      'posterSizes': serializer.toJson<String>(posterSizes),
      'profileSizes': serializer.toJson<String>(profileSizes),
      'stillSizes': serializer.toJson<String>(stillSizes),
    };
  }

  DriftConfigurationImage copyWith(
          {int? id,
          String? baseUrl,
          String? secureBaseUrl,
          String? backdropSizes,
          String? logoSizes,
          String? posterSizes,
          String? profileSizes,
          String? stillSizes}) =>
      DriftConfigurationImage(
        id: id ?? this.id,
        baseUrl: baseUrl ?? this.baseUrl,
        secureBaseUrl: secureBaseUrl ?? this.secureBaseUrl,
        backdropSizes: backdropSizes ?? this.backdropSizes,
        logoSizes: logoSizes ?? this.logoSizes,
        posterSizes: posterSizes ?? this.posterSizes,
        profileSizes: profileSizes ?? this.profileSizes,
        stillSizes: stillSizes ?? this.stillSizes,
      );
  DriftConfigurationImage copyWithCompanion(
      DriftConfigurationImagesCompanion data) {
    return DriftConfigurationImage(
      id: data.id.present ? data.id.value : this.id,
      baseUrl: data.baseUrl.present ? data.baseUrl.value : this.baseUrl,
      secureBaseUrl: data.secureBaseUrl.present
          ? data.secureBaseUrl.value
          : this.secureBaseUrl,
      backdropSizes: data.backdropSizes.present
          ? data.backdropSizes.value
          : this.backdropSizes,
      logoSizes: data.logoSizes.present ? data.logoSizes.value : this.logoSizes,
      posterSizes:
          data.posterSizes.present ? data.posterSizes.value : this.posterSizes,
      profileSizes: data.profileSizes.present
          ? data.profileSizes.value
          : this.profileSizes,
      stillSizes:
          data.stillSizes.present ? data.stillSizes.value : this.stillSizes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DriftConfigurationImage(')
          ..write('id: $id, ')
          ..write('baseUrl: $baseUrl, ')
          ..write('secureBaseUrl: $secureBaseUrl, ')
          ..write('backdropSizes: $backdropSizes, ')
          ..write('logoSizes: $logoSizes, ')
          ..write('posterSizes: $posterSizes, ')
          ..write('profileSizes: $profileSizes, ')
          ..write('stillSizes: $stillSizes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, baseUrl, secureBaseUrl, backdropSizes,
      logoSizes, posterSizes, profileSizes, stillSizes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftConfigurationImage &&
          other.id == this.id &&
          other.baseUrl == this.baseUrl &&
          other.secureBaseUrl == this.secureBaseUrl &&
          other.backdropSizes == this.backdropSizes &&
          other.logoSizes == this.logoSizes &&
          other.posterSizes == this.posterSizes &&
          other.profileSizes == this.profileSizes &&
          other.stillSizes == this.stillSizes);
}

class DriftConfigurationImagesCompanion
    extends UpdateCompanion<DriftConfigurationImage> {
  final Value<int> id;
  final Value<String> baseUrl;
  final Value<String> secureBaseUrl;
  final Value<String> backdropSizes;
  final Value<String> logoSizes;
  final Value<String> posterSizes;
  final Value<String> profileSizes;
  final Value<String> stillSizes;
  const DriftConfigurationImagesCompanion({
    this.id = const Value.absent(),
    this.baseUrl = const Value.absent(),
    this.secureBaseUrl = const Value.absent(),
    this.backdropSizes = const Value.absent(),
    this.logoSizes = const Value.absent(),
    this.posterSizes = const Value.absent(),
    this.profileSizes = const Value.absent(),
    this.stillSizes = const Value.absent(),
  });
  DriftConfigurationImagesCompanion.insert({
    this.id = const Value.absent(),
    required String baseUrl,
    required String secureBaseUrl,
    required String backdropSizes,
    required String logoSizes,
    required String posterSizes,
    required String profileSizes,
    required String stillSizes,
  })  : baseUrl = Value(baseUrl),
        secureBaseUrl = Value(secureBaseUrl),
        backdropSizes = Value(backdropSizes),
        logoSizes = Value(logoSizes),
        posterSizes = Value(posterSizes),
        profileSizes = Value(profileSizes),
        stillSizes = Value(stillSizes);
  static Insertable<DriftConfigurationImage> custom({
    Expression<int>? id,
    Expression<String>? baseUrl,
    Expression<String>? secureBaseUrl,
    Expression<String>? backdropSizes,
    Expression<String>? logoSizes,
    Expression<String>? posterSizes,
    Expression<String>? profileSizes,
    Expression<String>? stillSizes,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (baseUrl != null) 'base_url': baseUrl,
      if (secureBaseUrl != null) 'secure_base_url': secureBaseUrl,
      if (backdropSizes != null) 'backdrop_sizes': backdropSizes,
      if (logoSizes != null) 'logo_sizes': logoSizes,
      if (posterSizes != null) 'poster_sizes': posterSizes,
      if (profileSizes != null) 'profile_sizes': profileSizes,
      if (stillSizes != null) 'still_sizes': stillSizes,
    });
  }

  DriftConfigurationImagesCompanion copyWith(
      {Value<int>? id,
      Value<String>? baseUrl,
      Value<String>? secureBaseUrl,
      Value<String>? backdropSizes,
      Value<String>? logoSizes,
      Value<String>? posterSizes,
      Value<String>? profileSizes,
      Value<String>? stillSizes}) {
    return DriftConfigurationImagesCompanion(
      id: id ?? this.id,
      baseUrl: baseUrl ?? this.baseUrl,
      secureBaseUrl: secureBaseUrl ?? this.secureBaseUrl,
      backdropSizes: backdropSizes ?? this.backdropSizes,
      logoSizes: logoSizes ?? this.logoSizes,
      posterSizes: posterSizes ?? this.posterSizes,
      profileSizes: profileSizes ?? this.profileSizes,
      stillSizes: stillSizes ?? this.stillSizes,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (baseUrl.present) {
      map['base_url'] = Variable<String>(baseUrl.value);
    }
    if (secureBaseUrl.present) {
      map['secure_base_url'] = Variable<String>(secureBaseUrl.value);
    }
    if (backdropSizes.present) {
      map['backdrop_sizes'] = Variable<String>(backdropSizes.value);
    }
    if (logoSizes.present) {
      map['logo_sizes'] = Variable<String>(logoSizes.value);
    }
    if (posterSizes.present) {
      map['poster_sizes'] = Variable<String>(posterSizes.value);
    }
    if (profileSizes.present) {
      map['profile_sizes'] = Variable<String>(profileSizes.value);
    }
    if (stillSizes.present) {
      map['still_sizes'] = Variable<String>(stillSizes.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftConfigurationImagesCompanion(')
          ..write('id: $id, ')
          ..write('baseUrl: $baseUrl, ')
          ..write('secureBaseUrl: $secureBaseUrl, ')
          ..write('backdropSizes: $backdropSizes, ')
          ..write('logoSizes: $logoSizes, ')
          ..write('posterSizes: $posterSizes, ')
          ..write('profileSizes: $profileSizes, ')
          ..write('stillSizes: $stillSizes')
          ..write(')'))
        .toString();
  }
}

class $DriftGenreTable extends DriftGenre
    with TableInfo<$DriftGenreTable, DriftGenreData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftGenreTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _remoteIdMeta =
      const VerificationMeta('remoteId');
  @override
  late final GeneratedColumn<int> remoteId = GeneratedColumn<int>(
      'remote_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, remoteId, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'drift_genre';
  @override
  VerificationContext validateIntegrity(Insertable<DriftGenreData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('remote_id')) {
      context.handle(_remoteIdMeta,
          remoteId.isAcceptableOrUnknown(data['remote_id']!, _remoteIdMeta));
    } else if (isInserting) {
      context.missing(_remoteIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftGenreData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftGenreData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      remoteId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}remote_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $DriftGenreTable createAlias(String alias) {
    return $DriftGenreTable(attachedDatabase, alias);
  }
}

class DriftGenreData extends DataClass implements Insertable<DriftGenreData> {
  final int id;
  final int remoteId;
  final String name;
  const DriftGenreData(
      {required this.id, required this.remoteId, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['remote_id'] = Variable<int>(remoteId);
    map['name'] = Variable<String>(name);
    return map;
  }

  DriftGenreCompanion toCompanion(bool nullToAbsent) {
    return DriftGenreCompanion(
      id: Value(id),
      remoteId: Value(remoteId),
      name: Value(name),
    );
  }

  factory DriftGenreData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftGenreData(
      id: serializer.fromJson<int>(json['id']),
      remoteId: serializer.fromJson<int>(json['remoteId']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'remoteId': serializer.toJson<int>(remoteId),
      'name': serializer.toJson<String>(name),
    };
  }

  DriftGenreData copyWith({int? id, int? remoteId, String? name}) =>
      DriftGenreData(
        id: id ?? this.id,
        remoteId: remoteId ?? this.remoteId,
        name: name ?? this.name,
      );
  DriftGenreData copyWithCompanion(DriftGenreCompanion data) {
    return DriftGenreData(
      id: data.id.present ? data.id.value : this.id,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DriftGenreData(')
          ..write('id: $id, ')
          ..write('remoteId: $remoteId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, remoteId, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftGenreData &&
          other.id == this.id &&
          other.remoteId == this.remoteId &&
          other.name == this.name);
}

class DriftGenreCompanion extends UpdateCompanion<DriftGenreData> {
  final Value<int> id;
  final Value<int> remoteId;
  final Value<String> name;
  const DriftGenreCompanion({
    this.id = const Value.absent(),
    this.remoteId = const Value.absent(),
    this.name = const Value.absent(),
  });
  DriftGenreCompanion.insert({
    this.id = const Value.absent(),
    required int remoteId,
    required String name,
  })  : remoteId = Value(remoteId),
        name = Value(name);
  static Insertable<DriftGenreData> custom({
    Expression<int>? id,
    Expression<int>? remoteId,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (remoteId != null) 'remote_id': remoteId,
      if (name != null) 'name': name,
    });
  }

  DriftGenreCompanion copyWith(
      {Value<int>? id, Value<int>? remoteId, Value<String>? name}) {
    return DriftGenreCompanion(
      id: id ?? this.id,
      remoteId: remoteId ?? this.remoteId,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (remoteId.present) {
      map['remote_id'] = Variable<int>(remoteId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftGenreCompanion(')
          ..write('id: $id, ')
          ..write('remoteId: $remoteId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

abstract class _$MovieDatabase extends GeneratedDatabase {
  _$MovieDatabase(QueryExecutor e) : super(e);
  $MovieDatabaseManager get managers => $MovieDatabaseManager(this);
  late final $DriftFavoriteTable driftFavorite = $DriftFavoriteTable(this);
  late final $DriftConfigurationImagesTable driftConfigurationImages =
      $DriftConfigurationImagesTable(this);
  late final $DriftGenreTable driftGenre = $DriftGenreTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [driftFavorite, driftConfigurationImages, driftGenre];
}

typedef $$DriftFavoriteTableCreateCompanionBuilder = DriftFavoriteCompanion
    Function({
  Value<int> id,
  required int movieId,
  required String backdropPath,
  required String posterPath,
  required bool favorite,
  required double popularity,
  required DateTime releaseDate,
  required String title,
  required String overview,
});
typedef $$DriftFavoriteTableUpdateCompanionBuilder = DriftFavoriteCompanion
    Function({
  Value<int> id,
  Value<int> movieId,
  Value<String> backdropPath,
  Value<String> posterPath,
  Value<bool> favorite,
  Value<double> popularity,
  Value<DateTime> releaseDate,
  Value<String> title,
  Value<String> overview,
});

class $$DriftFavoriteTableFilterComposer
    extends FilterComposer<_$MovieDatabase, $DriftFavoriteTable> {
  $$DriftFavoriteTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get movieId => $state.composableBuilder(
      column: $state.table.movieId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get backdropPath => $state.composableBuilder(
      column: $state.table.backdropPath,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get posterPath => $state.composableBuilder(
      column: $state.table.posterPath,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get favorite => $state.composableBuilder(
      column: $state.table.favorite,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get popularity => $state.composableBuilder(
      column: $state.table.popularity,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get releaseDate => $state.composableBuilder(
      column: $state.table.releaseDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get overview => $state.composableBuilder(
      column: $state.table.overview,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DriftFavoriteTableOrderingComposer
    extends OrderingComposer<_$MovieDatabase, $DriftFavoriteTable> {
  $$DriftFavoriteTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get movieId => $state.composableBuilder(
      column: $state.table.movieId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get backdropPath => $state.composableBuilder(
      column: $state.table.backdropPath,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get posterPath => $state.composableBuilder(
      column: $state.table.posterPath,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get favorite => $state.composableBuilder(
      column: $state.table.favorite,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get popularity => $state.composableBuilder(
      column: $state.table.popularity,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get releaseDate => $state.composableBuilder(
      column: $state.table.releaseDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get overview => $state.composableBuilder(
      column: $state.table.overview,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$DriftFavoriteTableTableManager extends RootTableManager<
    _$MovieDatabase,
    $DriftFavoriteTable,
    DriftFavoriteData,
    $$DriftFavoriteTableFilterComposer,
    $$DriftFavoriteTableOrderingComposer,
    $$DriftFavoriteTableCreateCompanionBuilder,
    $$DriftFavoriteTableUpdateCompanionBuilder,
    (
      DriftFavoriteData,
      BaseReferences<_$MovieDatabase, $DriftFavoriteTable, DriftFavoriteData>
    ),
    DriftFavoriteData,
    PrefetchHooks Function()> {
  $$DriftFavoriteTableTableManager(
      _$MovieDatabase db, $DriftFavoriteTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DriftFavoriteTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$DriftFavoriteTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> movieId = const Value.absent(),
            Value<String> backdropPath = const Value.absent(),
            Value<String> posterPath = const Value.absent(),
            Value<bool> favorite = const Value.absent(),
            Value<double> popularity = const Value.absent(),
            Value<DateTime> releaseDate = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> overview = const Value.absent(),
          }) =>
              DriftFavoriteCompanion(
            id: id,
            movieId: movieId,
            backdropPath: backdropPath,
            posterPath: posterPath,
            favorite: favorite,
            popularity: popularity,
            releaseDate: releaseDate,
            title: title,
            overview: overview,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int movieId,
            required String backdropPath,
            required String posterPath,
            required bool favorite,
            required double popularity,
            required DateTime releaseDate,
            required String title,
            required String overview,
          }) =>
              DriftFavoriteCompanion.insert(
            id: id,
            movieId: movieId,
            backdropPath: backdropPath,
            posterPath: posterPath,
            favorite: favorite,
            popularity: popularity,
            releaseDate: releaseDate,
            title: title,
            overview: overview,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DriftFavoriteTableProcessedTableManager = ProcessedTableManager<
    _$MovieDatabase,
    $DriftFavoriteTable,
    DriftFavoriteData,
    $$DriftFavoriteTableFilterComposer,
    $$DriftFavoriteTableOrderingComposer,
    $$DriftFavoriteTableCreateCompanionBuilder,
    $$DriftFavoriteTableUpdateCompanionBuilder,
    (
      DriftFavoriteData,
      BaseReferences<_$MovieDatabase, $DriftFavoriteTable, DriftFavoriteData>
    ),
    DriftFavoriteData,
    PrefetchHooks Function()>;
typedef $$DriftConfigurationImagesTableCreateCompanionBuilder
    = DriftConfigurationImagesCompanion Function({
  Value<int> id,
  required String baseUrl,
  required String secureBaseUrl,
  required String backdropSizes,
  required String logoSizes,
  required String posterSizes,
  required String profileSizes,
  required String stillSizes,
});
typedef $$DriftConfigurationImagesTableUpdateCompanionBuilder
    = DriftConfigurationImagesCompanion Function({
  Value<int> id,
  Value<String> baseUrl,
  Value<String> secureBaseUrl,
  Value<String> backdropSizes,
  Value<String> logoSizes,
  Value<String> posterSizes,
  Value<String> profileSizes,
  Value<String> stillSizes,
});

class $$DriftConfigurationImagesTableFilterComposer
    extends FilterComposer<_$MovieDatabase, $DriftConfigurationImagesTable> {
  $$DriftConfigurationImagesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get baseUrl => $state.composableBuilder(
      column: $state.table.baseUrl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get secureBaseUrl => $state.composableBuilder(
      column: $state.table.secureBaseUrl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get backdropSizes => $state.composableBuilder(
      column: $state.table.backdropSizes,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get logoSizes => $state.composableBuilder(
      column: $state.table.logoSizes,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get posterSizes => $state.composableBuilder(
      column: $state.table.posterSizes,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get profileSizes => $state.composableBuilder(
      column: $state.table.profileSizes,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get stillSizes => $state.composableBuilder(
      column: $state.table.stillSizes,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DriftConfigurationImagesTableOrderingComposer
    extends OrderingComposer<_$MovieDatabase, $DriftConfigurationImagesTable> {
  $$DriftConfigurationImagesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get baseUrl => $state.composableBuilder(
      column: $state.table.baseUrl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get secureBaseUrl => $state.composableBuilder(
      column: $state.table.secureBaseUrl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get backdropSizes => $state.composableBuilder(
      column: $state.table.backdropSizes,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get logoSizes => $state.composableBuilder(
      column: $state.table.logoSizes,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get posterSizes => $state.composableBuilder(
      column: $state.table.posterSizes,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get profileSizes => $state.composableBuilder(
      column: $state.table.profileSizes,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get stillSizes => $state.composableBuilder(
      column: $state.table.stillSizes,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$DriftConfigurationImagesTableTableManager extends RootTableManager<
    _$MovieDatabase,
    $DriftConfigurationImagesTable,
    DriftConfigurationImage,
    $$DriftConfigurationImagesTableFilterComposer,
    $$DriftConfigurationImagesTableOrderingComposer,
    $$DriftConfigurationImagesTableCreateCompanionBuilder,
    $$DriftConfigurationImagesTableUpdateCompanionBuilder,
    (
      DriftConfigurationImage,
      BaseReferences<_$MovieDatabase, $DriftConfigurationImagesTable,
          DriftConfigurationImage>
    ),
    DriftConfigurationImage,
    PrefetchHooks Function()> {
  $$DriftConfigurationImagesTableTableManager(
      _$MovieDatabase db, $DriftConfigurationImagesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$DriftConfigurationImagesTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$DriftConfigurationImagesTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> baseUrl = const Value.absent(),
            Value<String> secureBaseUrl = const Value.absent(),
            Value<String> backdropSizes = const Value.absent(),
            Value<String> logoSizes = const Value.absent(),
            Value<String> posterSizes = const Value.absent(),
            Value<String> profileSizes = const Value.absent(),
            Value<String> stillSizes = const Value.absent(),
          }) =>
              DriftConfigurationImagesCompanion(
            id: id,
            baseUrl: baseUrl,
            secureBaseUrl: secureBaseUrl,
            backdropSizes: backdropSizes,
            logoSizes: logoSizes,
            posterSizes: posterSizes,
            profileSizes: profileSizes,
            stillSizes: stillSizes,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String baseUrl,
            required String secureBaseUrl,
            required String backdropSizes,
            required String logoSizes,
            required String posterSizes,
            required String profileSizes,
            required String stillSizes,
          }) =>
              DriftConfigurationImagesCompanion.insert(
            id: id,
            baseUrl: baseUrl,
            secureBaseUrl: secureBaseUrl,
            backdropSizes: backdropSizes,
            logoSizes: logoSizes,
            posterSizes: posterSizes,
            profileSizes: profileSizes,
            stillSizes: stillSizes,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DriftConfigurationImagesTableProcessedTableManager
    = ProcessedTableManager<
        _$MovieDatabase,
        $DriftConfigurationImagesTable,
        DriftConfigurationImage,
        $$DriftConfigurationImagesTableFilterComposer,
        $$DriftConfigurationImagesTableOrderingComposer,
        $$DriftConfigurationImagesTableCreateCompanionBuilder,
        $$DriftConfigurationImagesTableUpdateCompanionBuilder,
        (
          DriftConfigurationImage,
          BaseReferences<_$MovieDatabase, $DriftConfigurationImagesTable,
              DriftConfigurationImage>
        ),
        DriftConfigurationImage,
        PrefetchHooks Function()>;
typedef $$DriftGenreTableCreateCompanionBuilder = DriftGenreCompanion Function({
  Value<int> id,
  required int remoteId,
  required String name,
});
typedef $$DriftGenreTableUpdateCompanionBuilder = DriftGenreCompanion Function({
  Value<int> id,
  Value<int> remoteId,
  Value<String> name,
});

class $$DriftGenreTableFilterComposer
    extends FilterComposer<_$MovieDatabase, $DriftGenreTable> {
  $$DriftGenreTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get remoteId => $state.composableBuilder(
      column: $state.table.remoteId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DriftGenreTableOrderingComposer
    extends OrderingComposer<_$MovieDatabase, $DriftGenreTable> {
  $$DriftGenreTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get remoteId => $state.composableBuilder(
      column: $state.table.remoteId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$DriftGenreTableTableManager extends RootTableManager<
    _$MovieDatabase,
    $DriftGenreTable,
    DriftGenreData,
    $$DriftGenreTableFilterComposer,
    $$DriftGenreTableOrderingComposer,
    $$DriftGenreTableCreateCompanionBuilder,
    $$DriftGenreTableUpdateCompanionBuilder,
    (
      DriftGenreData,
      BaseReferences<_$MovieDatabase, $DriftGenreTable, DriftGenreData>
    ),
    DriftGenreData,
    PrefetchHooks Function()> {
  $$DriftGenreTableTableManager(_$MovieDatabase db, $DriftGenreTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DriftGenreTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$DriftGenreTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> remoteId = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) =>
              DriftGenreCompanion(
            id: id,
            remoteId: remoteId,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int remoteId,
            required String name,
          }) =>
              DriftGenreCompanion.insert(
            id: id,
            remoteId: remoteId,
            name: name,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DriftGenreTableProcessedTableManager = ProcessedTableManager<
    _$MovieDatabase,
    $DriftGenreTable,
    DriftGenreData,
    $$DriftGenreTableFilterComposer,
    $$DriftGenreTableOrderingComposer,
    $$DriftGenreTableCreateCompanionBuilder,
    $$DriftGenreTableUpdateCompanionBuilder,
    (
      DriftGenreData,
      BaseReferences<_$MovieDatabase, $DriftGenreTable, DriftGenreData>
    ),
    DriftGenreData,
    PrefetchHooks Function()>;

class $MovieDatabaseManager {
  final _$MovieDatabase _db;
  $MovieDatabaseManager(this._db);
  $$DriftFavoriteTableTableManager get driftFavorite =>
      $$DriftFavoriteTableTableManager(_db, _db.driftFavorite);
  $$DriftConfigurationImagesTableTableManager get driftConfigurationImages =>
      $$DriftConfigurationImagesTableTableManager(
          _db, _db.driftConfigurationImages);
  $$DriftGenreTableTableManager get driftGenre =>
      $$DriftGenreTableTableManager(_db, _db.driftGenre);
}
