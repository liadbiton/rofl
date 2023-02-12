///
//  Generated code. Do not modify.
//  source: protocol/protocol.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'register_request.pb.dart' as $1;
import 'login_request.pb.dart' as $2;

enum AppRequest_Request {
  registerRequest, 
  logicRequest, 
  notSet
}

class AppRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AppRequest_Request> _AppRequest_RequestByTag = {
    4 : AppRequest_Request.registerRequest,
    5 : AppRequest_Request.logicRequest,
    0 : AppRequest_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppRequest', createEmptyInstance: create)
    ..oo(0, [4, 5])
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionToken', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.OU3)
    ..aOM<$1.RegisterRequest>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'registerRequest', subBuilder: $1.RegisterRequest.create)
    ..aOM<$2.LoginRequest>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'logicRequest', subBuilder: $2.LoginRequest.create)
    ..hasRequiredFields = false
  ;

  AppRequest._() : super();
  factory AppRequest({
    $core.int? version,
    $core.int? sessionToken,
    $core.int? requestId,
    $1.RegisterRequest? registerRequest,
    $2.LoginRequest? logicRequest,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    if (sessionToken != null) {
      _result.sessionToken = sessionToken;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (registerRequest != null) {
      _result.registerRequest = registerRequest;
    }
    if (logicRequest != null) {
      _result.logicRequest = logicRequest;
    }
    return _result;
  }
  factory AppRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppRequest clone() => AppRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppRequest copyWith(void Function(AppRequest) updates) => super.copyWith((message) => updates(message as AppRequest)) as AppRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppRequest create() => AppRequest._();
  AppRequest createEmptyInstance() => create();
  static $pb.PbList<AppRequest> createRepeated() => $pb.PbList<AppRequest>();
  @$core.pragma('dart2js:noInline')
  static AppRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppRequest>(create);
  static AppRequest? _defaultInstance;

  AppRequest_Request whichRequest() => _AppRequest_RequestByTag[$_whichOneof(0)]!;
  void clearRequest() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get sessionToken => $_getIZ(1);
  @$pb.TagNumber(2)
  set sessionToken($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get requestId => $_getIZ(2);
  @$pb.TagNumber(3)
  set requestId($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestId() => clearField(3);

  @$pb.TagNumber(4)
  $1.RegisterRequest get registerRequest => $_getN(3);
  @$pb.TagNumber(4)
  set registerRequest($1.RegisterRequest v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRegisterRequest() => $_has(3);
  @$pb.TagNumber(4)
  void clearRegisterRequest() => clearField(4);
  @$pb.TagNumber(4)
  $1.RegisterRequest ensureRegisterRequest() => $_ensure(3);

  @$pb.TagNumber(5)
  $2.LoginRequest get logicRequest => $_getN(4);
  @$pb.TagNumber(5)
  set logicRequest($2.LoginRequest v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasLogicRequest() => $_has(4);
  @$pb.TagNumber(5)
  void clearLogicRequest() => clearField(5);
  @$pb.TagNumber(5)
  $2.LoginRequest ensureLogicRequest() => $_ensure(4);
}

enum AppResponse_Response {
  registerResponse, 
  loginResponse, 
  notSet
}

class AppResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AppResponse_Response> _AppResponse_ResponseByTag = {
    2 : AppResponse_Response.registerResponse,
    3 : AppResponse_Response.loginResponse,
    0 : AppResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppResponse', createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', $pb.PbFieldType.OU3)
    ..aOM<$1.RegisterResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'registerResponse', subBuilder: $1.RegisterResponse.create)
    ..aOM<$2.LoginResponse>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loginResponse', subBuilder: $2.LoginResponse.create)
    ..hasRequiredFields = false
  ;

  AppResponse._() : super();
  factory AppResponse({
    $core.int? requestId,
    $1.RegisterResponse? registerResponse,
    $2.LoginResponse? loginResponse,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (registerResponse != null) {
      _result.registerResponse = registerResponse;
    }
    if (loginResponse != null) {
      _result.loginResponse = loginResponse;
    }
    return _result;
  }
  factory AppResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppResponse clone() => AppResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppResponse copyWith(void Function(AppResponse) updates) => super.copyWith((message) => updates(message as AppResponse)) as AppResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppResponse create() => AppResponse._();
  AppResponse createEmptyInstance() => create();
  static $pb.PbList<AppResponse> createRepeated() => $pb.PbList<AppResponse>();
  @$core.pragma('dart2js:noInline')
  static AppResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppResponse>(create);
  static AppResponse? _defaultInstance;

  AppResponse_Response whichResponse() => _AppResponse_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get requestId => $_getIZ(0);
  @$pb.TagNumber(1)
  set requestId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $1.RegisterResponse get registerResponse => $_getN(1);
  @$pb.TagNumber(2)
  set registerResponse($1.RegisterResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegisterResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegisterResponse() => clearField(2);
  @$pb.TagNumber(2)
  $1.RegisterResponse ensureRegisterResponse() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.LoginResponse get loginResponse => $_getN(2);
  @$pb.TagNumber(3)
  set loginResponse($2.LoginResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLoginResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearLoginResponse() => clearField(3);
  @$pb.TagNumber(3)
  $2.LoginResponse ensureLoginResponse() => $_ensure(2);
}

