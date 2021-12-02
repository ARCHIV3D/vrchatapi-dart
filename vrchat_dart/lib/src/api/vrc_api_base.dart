// Package imports:
import 'package:dio/dio.dart';
import 'package:vrchat_dart_generated/vrchat_dart_generated.dart';

// Project imports:
import 'package:vrchat_dart/src/api/src/auth_api.dart';
import 'package:vrchat_dart/src/streaming/vrc_streaming.dart';

import 'package:vrchat_dart/src/api/vrc_api_native.dart'
    if (dart.library.js) 'package:vrchat_dart/src/api/vrc_api_web.dart';

/// Shared code between the web and native implementations
abstract class VrcApiBase {
  /// Access to auth convenience methods
  final AuthApi auth;

  /// Access to the raw generated API
  final VrchatDartGenerated rawApi;

  /// Access to websocket streaming
  final VrcStreaming streaming;

  /// Constructor
  VrcApiBase({
    required this.rawApi,
    required String? websocketUrl,
  })  : auth = AuthApi(rawApi),
        streaming = VrcStreaming(rawApi, websocketUrl);

  /// Construct the proper implementation of [VrcApi]
  factory VrcApiBase.forPlatform({
    required BaseOptions options,
    required String? cookiePath,
    required String? websocketUrl,
  }) {
    return VrcApi(
      options: options,
      cookiePath: cookiePath,
      websocketUrl: websocketUrl,
    );
  }
}
