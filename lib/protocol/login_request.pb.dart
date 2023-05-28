///
//  Generated code. Do not modify.
//  source: protocol/login_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'login_request.pbenum.dart';

export 'login_request.pbenum.dart';

enum LoginRequest_UserIdentifier {
  phoneNumber, 
  email, 
  notSet
}

class LoginRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, LoginRequest_UserIdentifier> _LoginRequest_UserIdentifierByTag = {
    1 : LoginRequest_UserIdentifier.phoneNumber,
    2 : LoginRequest_UserIdentifier.email,
    0 : LoginRequest_UserIdentifier.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginRequest', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumber')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  LoginRequest._() : super();
  factory LoginRequest({
    $core.String? phoneNumber,
    $core.String? email,
    $core.String? password,
  }) {
    final _result = create();
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (email != null) {
      _result.email = email;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory LoginRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginRequest clone() => LoginRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginRequest copyWith(void Function(LoginRequest) updates) => super.copyWith((message) => updates(message as LoginRequest)) as LoginRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginRequest create() => LoginRequest._();
  LoginRequest createEmptyInstance() => create();
  static $pb.PbList<LoginRequest> createRepeated() => $pb.PbList<LoginRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginRequest>(create);
  static LoginRequest? _defaultInstance;

  LoginRequest_UserIdentifier whichUserIdentifier() => _LoginRequest_UserIdentifierByTag[$_whichOneof(0)]!;
  void clearUserIdentifier() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get phoneNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set phoneNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoneNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoneNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);
}

class LoginResponse_ResponseData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginResponse.ResponseData', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionToken')
    ..hasRequiredFields = false
  ;

  LoginResponse_ResponseData._() : super();
  factory LoginResponse_ResponseData({
    $core.String? sessionToken,
  }) {
    final _result = create();
    if (sessionToken != null) {
      _result.sessionToken = sessionToken;
    }
    return _result;
  }
  factory LoginResponse_ResponseData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResponse_ResponseData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginResponse_ResponseData clone() => LoginResponse_ResponseData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginResponse_ResponseData copyWith(void Function(LoginResponse_ResponseData) updates) => super.copyWith((message) => updates(message as LoginResponse_ResponseData)) as LoginResponse_ResponseData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginResponse_ResponseData create() => LoginResponse_ResponseData._();
  LoginResponse_ResponseData createEmptyInstance() => create();
  static $pb.PbList<LoginResponse_ResponseData> createRepeated() => $pb.PbList<LoginResponse_ResponseData>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse_ResponseData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse_ResponseData>(create);
  static LoginResponse_ResponseData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionToken() => clearField(1);
}

class LoginResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginResponse', createEmptyInstance: create)
    ..e<LoginResponse_ReturnCode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'returnCode', $pb.PbFieldType.OE, defaultOrMaker: LoginResponse_ReturnCode.SUCCESS, valueOf: LoginResponse_ReturnCode.valueOf, enumValues: LoginResponse_ReturnCode.values)
    ..aOM<LoginResponse_ResponseData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseData', subBuilder: LoginResponse_ResponseData.create)
    ..hasRequiredFields = false
  ;

  LoginResponse._() : super();
  factory LoginResponse({
    LoginResponse_ReturnCode? returnCode,
    LoginResponse_ResponseData? responseData,
  }) {
    final _result = create();
    if (returnCode != null) {
      _result.returnCode = returnCode;
    }
    if (responseData != null) {
      _result.responseData = responseData;
    }
    return _result;
  }
  factory LoginResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginResponse clone() => LoginResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginResponse copyWith(void Function(LoginResponse) updates) => super.copyWith((message) => updates(message as LoginResponse)) as LoginResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginResponse create() => LoginResponse._();
  LoginResponse createEmptyInstance() => create();
  static $pb.PbList<LoginResponse> createRepeated() => $pb.PbList<LoginResponse>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse>(create);
  static LoginResponse? _defaultInstance;

  @$pb.TagNumber(1)
  LoginResponse_ReturnCode get returnCode => $_getN(0);
  @$pb.TagNumber(1)
  set returnCode(LoginResponse_ReturnCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReturnCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearReturnCode() => clearField(1);

  @$pb.TagNumber(2)
  LoginResponse_ResponseData get responseData => $_getN(1);
  @$pb.TagNumber(2)
  set responseData(LoginResponse_ResponseData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponseData() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseData() => clearField(2);
  @$pb.TagNumber(2)
  LoginResponse_ResponseData ensureResponseData() => $_ensure(1);
}

