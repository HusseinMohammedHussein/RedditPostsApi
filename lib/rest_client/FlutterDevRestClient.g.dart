// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FlutterDevRestClient.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _FlutterDevRestClient implements FlutterDevRestClient {
  _FlutterDevRestClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://oauth.reddit.com/r/FlutterDev';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<FlutterDevPost> listNewPosts() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Authorization':
          'bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IlNIQTI1NjpzS3dsMnlsV0VtMjVmcXhwTU40cWY4MXE2OWFFdWFyMnpLMUdhVGxjdWNZIiwidHlwIjoiSldUIn0.eyJzdWIiOiJ1c2VyIiwiZXhwIjoxNzAzMDM0OTk2LjUyNjA5NCwiaWF0IjoxNzAyOTQ4NTk2LjUyNjA5NCwianRpIjoiTlBEZ1JmMWZ5NHk4RThaQ2FOOUp0Q2tLbTliTlJRIiwiY2lkIjoiS0hySDgyNk9HaHBhN1psbFoxejJ4dyIsImxpZCI6InQyX2YwcGtlZGFoIiwiYWlkIjoidDJfZjBwa2VkYWgiLCJsY2EiOjE2MzMxMDE5ODMwMDAsInNjcCI6ImVKeUtWdEpTaWdVRUFBRF9fd056QVNjIiwiZmxvIjo5fQ.oPCG1mP1XpJjcgQzF7c74vczBjNVymwu87zCKRy0UKojZ8yuAVdSch_M_qCzWlcvzyDTZo_Sn8YXkuc1fPk8pszqVzC47v4k-nqTErzTbMtLsp5vC6zw6kaeygZPDgN6vEiNTUOWKors3_Y4_kQ4TfFiIGjj7vTttwpvB5fW4cgcT83i9tzXAxEravmHlczXkmbwb9IiTEhFBxBrBs_Wp-ct5TZFGYRbI0Z7ChtZDNlsg5gtsLDn4hLcBj6ej1SRGGjZlOftgHzh29wowo8RhJ9WR8dh1d4cMWC1GaSOdqvPf0PJRRxCr9j3nSKh691vH9fxTgi_SnGOy5c8f1saCw',
      r'User-Agent': 'ChangeMeClient/0.1',
    };
    _headers.removeWhere((k, v) => v == null);
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<FlutterDevPost>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/new',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = FlutterDevPost.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FlutterDevPost> listHotPosts() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Authorization':
          'bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IlNIQTI1NjpzS3dsMnlsV0VtMjVmcXhwTU40cWY4MXE2OWFFdWFyMnpLMUdhVGxjdWNZIiwidHlwIjoiSldUIn0.eyJzdWIiOiJ1c2VyIiwiZXhwIjoxNzAzMDM0OTk2LjUyNjA5NCwiaWF0IjoxNzAyOTQ4NTk2LjUyNjA5NCwianRpIjoiTlBEZ1JmMWZ5NHk4RThaQ2FOOUp0Q2tLbTliTlJRIiwiY2lkIjoiS0hySDgyNk9HaHBhN1psbFoxejJ4dyIsImxpZCI6InQyX2YwcGtlZGFoIiwiYWlkIjoidDJfZjBwa2VkYWgiLCJsY2EiOjE2MzMxMDE5ODMwMDAsInNjcCI6ImVKeUtWdEpTaWdVRUFBRF9fd056QVNjIiwiZmxvIjo5fQ.oPCG1mP1XpJjcgQzF7c74vczBjNVymwu87zCKRy0UKojZ8yuAVdSch_M_qCzWlcvzyDTZo_Sn8YXkuc1fPk8pszqVzC47v4k-nqTErzTbMtLsp5vC6zw6kaeygZPDgN6vEiNTUOWKors3_Y4_kQ4TfFiIGjj7vTttwpvB5fW4cgcT83i9tzXAxEravmHlczXkmbwb9IiTEhFBxBrBs_Wp-ct5TZFGYRbI0Z7ChtZDNlsg5gtsLDn4hLcBj6ej1SRGGjZlOftgHzh29wowo8RhJ9WR8dh1d4cMWC1GaSOdqvPf0PJRRxCr9j3nSKh691vH9fxTgi_SnGOy5c8f1saCw',
      r'User-Agent': 'ChangeMeClient/0.1',
    };
    _headers.removeWhere((k, v) => v == null);
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<FlutterDevPost>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/hot',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = FlutterDevPost.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FlutterDevPost> listRisingPosts() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Authorization':
          'bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IlNIQTI1NjpzS3dsMnlsV0VtMjVmcXhwTU40cWY4MXE2OWFFdWFyMnpLMUdhVGxjdWNZIiwidHlwIjoiSldUIn0.eyJzdWIiOiJ1c2VyIiwiZXhwIjoxNzAzMDM0OTk2LjUyNjA5NCwiaWF0IjoxNzAyOTQ4NTk2LjUyNjA5NCwianRpIjoiTlBEZ1JmMWZ5NHk4RThaQ2FOOUp0Q2tLbTliTlJRIiwiY2lkIjoiS0hySDgyNk9HaHBhN1psbFoxejJ4dyIsImxpZCI6InQyX2YwcGtlZGFoIiwiYWlkIjoidDJfZjBwa2VkYWgiLCJsY2EiOjE2MzMxMDE5ODMwMDAsInNjcCI6ImVKeUtWdEpTaWdVRUFBRF9fd056QVNjIiwiZmxvIjo5fQ.oPCG1mP1XpJjcgQzF7c74vczBjNVymwu87zCKRy0UKojZ8yuAVdSch_M_qCzWlcvzyDTZo_Sn8YXkuc1fPk8pszqVzC47v4k-nqTErzTbMtLsp5vC6zw6kaeygZPDgN6vEiNTUOWKors3_Y4_kQ4TfFiIGjj7vTttwpvB5fW4cgcT83i9tzXAxEravmHlczXkmbwb9IiTEhFBxBrBs_Wp-ct5TZFGYRbI0Z7ChtZDNlsg5gtsLDn4hLcBj6ej1SRGGjZlOftgHzh29wowo8RhJ9WR8dh1d4cMWC1GaSOdqvPf0PJRRxCr9j3nSKh691vH9fxTgi_SnGOy5c8f1saCw',
      r'User-Agent': 'ChangeMeClient/0.1',
    };
    _headers.removeWhere((k, v) => v == null);
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<FlutterDevPost>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rising',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = FlutterDevPost.fromJson(_result.data!);
    return value;
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
