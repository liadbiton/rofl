///
//  Generated code. Do not modify.
//  source: protocol/register_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user_information.pb.dart' as $0;

import 'register_request.pbenum.dart';

export 'register_request.pbenum.dart';

class VolunteerUniqueRegisterParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VolunteerUniqueRegisterParameters', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..hasRequiredFields = false
  ;

  VolunteerUniqueRegisterParameters._() : super();
  factory VolunteerUniqueRegisterParameters({
    $core.String? email,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    return _result;
  }
  factory VolunteerUniqueRegisterParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VolunteerUniqueRegisterParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VolunteerUniqueRegisterParameters clone() => VolunteerUniqueRegisterParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VolunteerUniqueRegisterParameters copyWith(void Function(VolunteerUniqueRegisterParameters) updates) => super.copyWith((message) => updates(message as VolunteerUniqueRegisterParameters)) as VolunteerUniqueRegisterParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VolunteerUniqueRegisterParameters create() => VolunteerUniqueRegisterParameters._();
  VolunteerUniqueRegisterParameters createEmptyInstance() => create();
  static $pb.PbList<VolunteerUniqueRegisterParameters> createRepeated() => $pb.PbList<VolunteerUniqueRegisterParameters>();
  @$core.pragma('dart2js:noInline')
  static VolunteerUniqueRegisterParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VolunteerUniqueRegisterParameters>(create);
  static VolunteerUniqueRegisterParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
}

class RegisterRequest_VolunteerParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterRequest.VolunteerParameters', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..hasRequiredFields = false
  ;

  RegisterRequest_VolunteerParameters._() : super();
  factory RegisterRequest_VolunteerParameters({
    $core.String? email,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    return _result;
  }
  factory RegisterRequest_VolunteerParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterRequest_VolunteerParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterRequest_VolunteerParameters clone() => RegisterRequest_VolunteerParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterRequest_VolunteerParameters copyWith(void Function(RegisterRequest_VolunteerParameters) updates) => super.copyWith((message) => updates(message as RegisterRequest_VolunteerParameters)) as RegisterRequest_VolunteerParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterRequest_VolunteerParameters create() => RegisterRequest_VolunteerParameters._();
  RegisterRequest_VolunteerParameters createEmptyInstance() => create();
  static $pb.PbList<RegisterRequest_VolunteerParameters> createRepeated() => $pb.PbList<RegisterRequest_VolunteerParameters>();
  @$core.pragma('dart2js:noInline')
  static RegisterRequest_VolunteerParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterRequest_VolunteerParameters>(create);
  static RegisterRequest_VolunteerParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
}

class RegisterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterRequest', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isVolunteer')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOM<$0.HomeAddress>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: $0.HomeAddress.create)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumber')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idNumber')
    ..aOM<$0.Date>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'birthday', subBuilder: $0.Date.create)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fcmToken')
    ..aOM<RegisterRequest_VolunteerParameters>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volunteerParameters', subBuilder: RegisterRequest_VolunteerParameters.create)
    ..hasRequiredFields = false
  ;

  RegisterRequest._() : super();
  factory RegisterRequest({
    $core.bool? isVolunteer,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? password,
    $0.HomeAddress? address,
    $core.String? phoneNumber,
    $core.String? idNumber,
    $0.Date? birthday,
    $core.String? fcmToken,
    RegisterRequest_VolunteerParameters? volunteerParameters,
  }) {
    final _result = create();
    if (isVolunteer != null) {
      _result.isVolunteer = isVolunteer;
    }
    if (firstName != null) {
      _result.firstName = firstName;
    }
    if (lastName != null) {
      _result.lastName = lastName;
    }
    if (password != null) {
      _result.password = password;
    }
    if (address != null) {
      _result.address = address;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (idNumber != null) {
      _result.idNumber = idNumber;
    }
    if (birthday != null) {
      _result.birthday = birthday;
    }
    if (fcmToken != null) {
      _result.fcmToken = fcmToken;
    }
    if (volunteerParameters != null) {
      _result.volunteerParameters = volunteerParameters;
    }
    return _result;
  }
  factory RegisterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterRequest clone() => RegisterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterRequest copyWith(void Function(RegisterRequest) updates) => super.copyWith((message) => updates(message as RegisterRequest)) as RegisterRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterRequest create() => RegisterRequest._();
  RegisterRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterRequest> createRepeated() => $pb.PbList<RegisterRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterRequest>(create);
  static RegisterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isVolunteer => $_getBF(0);
  @$pb.TagNumber(1)
  set isVolunteer($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsVolunteer() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsVolunteer() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(2)
  set firstName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(3)
  set lastName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get password => $_getSZ(3);
  @$pb.TagNumber(4)
  set password($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearPassword() => clearField(4);

  @$pb.TagNumber(5)
  $0.HomeAddress get address => $_getN(4);
  @$pb.TagNumber(5)
  set address($0.HomeAddress v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearAddress() => clearField(5);
  @$pb.TagNumber(5)
  $0.HomeAddress ensureAddress() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get phoneNumber => $_getSZ(5);
  @$pb.TagNumber(6)
  set phoneNumber($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPhoneNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearPhoneNumber() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get idNumber => $_getSZ(6);
  @$pb.TagNumber(7)
  set idNumber($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIdNumber() => $_has(6);
  @$pb.TagNumber(7)
  void clearIdNumber() => clearField(7);

  @$pb.TagNumber(8)
  $0.Date get birthday => $_getN(7);
  @$pb.TagNumber(8)
  set birthday($0.Date v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasBirthday() => $_has(7);
  @$pb.TagNumber(8)
  void clearBirthday() => clearField(8);
  @$pb.TagNumber(8)
  $0.Date ensureBirthday() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.String get fcmToken => $_getSZ(8);
  @$pb.TagNumber(9)
  set fcmToken($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFcmToken() => $_has(8);
  @$pb.TagNumber(9)
  void clearFcmToken() => clearField(9);

  @$pb.TagNumber(10)
  RegisterRequest_VolunteerParameters get volunteerParameters => $_getN(9);
  @$pb.TagNumber(10)
  set volunteerParameters(RegisterRequest_VolunteerParameters v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasVolunteerParameters() => $_has(9);
  @$pb.TagNumber(10)
  void clearVolunteerParameters() => clearField(10);
  @$pb.TagNumber(10)
  RegisterRequest_VolunteerParameters ensureVolunteerParameters() => $_ensure(9);
}

class RegisterResponse_ResponseData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterResponse.ResponseData', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionToken')
    ..hasRequiredFields = false
  ;

  RegisterResponse_ResponseData._() : super();
  factory RegisterResponse_ResponseData({
    $core.String? sessionToken,
  }) {
    final _result = create();
    if (sessionToken != null) {
      _result.sessionToken = sessionToken;
    }
    return _result;
  }
  factory RegisterResponse_ResponseData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterResponse_ResponseData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterResponse_ResponseData clone() => RegisterResponse_ResponseData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterResponse_ResponseData copyWith(void Function(RegisterResponse_ResponseData) updates) => super.copyWith((message) => updates(message as RegisterResponse_ResponseData)) as RegisterResponse_ResponseData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterResponse_ResponseData create() => RegisterResponse_ResponseData._();
  RegisterResponse_ResponseData createEmptyInstance() => create();
  static $pb.PbList<RegisterResponse_ResponseData> createRepeated() => $pb.PbList<RegisterResponse_ResponseData>();
  @$core.pragma('dart2js:noInline')
  static RegisterResponse_ResponseData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterResponse_ResponseData>(create);
  static RegisterResponse_ResponseData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionToken() => clearField(1);
}

class RegisterResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterResponse', createEmptyInstance: create)
    ..e<RegisterResponse_ReturnCode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'returnCode', $pb.PbFieldType.OE, defaultOrMaker: RegisterResponse_ReturnCode.SUCCESS, valueOf: RegisterResponse_ReturnCode.valueOf, enumValues: RegisterResponse_ReturnCode.values)
    ..aOM<RegisterResponse_ResponseData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseData', subBuilder: RegisterResponse_ResponseData.create)
    ..hasRequiredFields = false
  ;

  RegisterResponse._() : super();
  factory RegisterResponse({
    RegisterResponse_ReturnCode? returnCode,
    RegisterResponse_ResponseData? responseData,
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
  factory RegisterResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterResponse clone() => RegisterResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterResponse copyWith(void Function(RegisterResponse) updates) => super.copyWith((message) => updates(message as RegisterResponse)) as RegisterResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterResponse create() => RegisterResponse._();
  RegisterResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterResponse> createRepeated() => $pb.PbList<RegisterResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterResponse>(create);
  static RegisterResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RegisterResponse_ReturnCode get returnCode => $_getN(0);
  @$pb.TagNumber(1)
  set returnCode(RegisterResponse_ReturnCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReturnCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearReturnCode() => clearField(1);

  @$pb.TagNumber(2)
  RegisterResponse_ResponseData get responseData => $_getN(1);
  @$pb.TagNumber(2)
  set responseData(RegisterResponse_ResponseData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponseData() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseData() => clearField(2);
  @$pb.TagNumber(2)
  RegisterResponse_ResponseData ensureResponseData() => $_ensure(1);
}

