// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'steam_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Game _$GameFromJson(Map<String, dynamic> json) => Game(
      name: json['name'] as String,
      id: (json['id'] as num?)?.toInt() ?? 0,
      appid: (json['appid'] as num?)?.toInt() ?? 0,
      final_price: (json['final_price'] as num?)?.toInt() ?? 0,
      small_capsule_image: json['small_capsule_image'] as String? ?? '',
    );

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'appid': instance.appid,
      'final_price': instance.final_price,
      'small_capsule_image': instance.small_capsule_image,
    };

GameListResponse _$GameListResponseFromJson(Map<String, dynamic> json) =>
    GameListResponse(
      applist: Applist.fromJson(json['applist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameListResponseToJson(GameListResponse instance) =>
    <String, dynamic>{
      'applist': instance.applist,
    };

FeaturedGamesListResponse _$FeaturedGamesListResponseFromJson(
        Map<String, dynamic> json) =>
    FeaturedGamesListResponse(
      featured_win: (json['featured_win'] as List<dynamic>)
          .map((e) => Game.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeaturedGamesListResponseToJson(
        FeaturedGamesListResponse instance) =>
    <String, dynamic>{
      'featured_win': instance.featured_win,
    };

Applist _$ApplistFromJson(Map<String, dynamic> json) => Applist(
      apps: (json['apps'] as List<dynamic>)
          .map((e) => Game.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApplistToJson(Applist instance) => <String, dynamic>{
      'apps': instance.apps,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _SteamService implements SteamService {
  _SteamService(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<GameListResponse> getGames() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<GameListResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          'https://corsproxy.io/?https://api.steampowered.com/ISteamApps/GetAppList/v2',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late GameListResponse _value;
    try {
      _value = GameListResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<FeaturedGamesListResponse> getFeaturedGames() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<FeaturedGamesListResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          'https://corsproxy.io/?https://store.steampowered.com/api/featured?cc=AR',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late FeaturedGamesListResponse _value;
    try {
      _value = FeaturedGamesListResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<HttpResponse<dynamic>> getGameDetail(String ids) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'appids': ids};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<dynamic>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          'https://corsproxy.io/?https://store.steampowered.com/api/appdetails?cc=Ar&filters=price_overview',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
