///
//  Generated code. Do not modify.
//  source: protocol/register_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class RegisterReturnCode extends $pb.ProtobufEnum {
  static const RegisterReturnCode REGISTER_SUCCESS = RegisterReturnCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REGISTER_SUCCESS');
  static const RegisterReturnCode REGISTER_PHONE_TAKEN = RegisterReturnCode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REGISTER_PHONE_TAKEN');
  static const RegisterReturnCode REGISTER_EMAIL_TAKEN = RegisterReturnCode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REGISTER_EMAIL_TAKEN');

  static const $core.List<RegisterReturnCode> values = <RegisterReturnCode> [
    REGISTER_SUCCESS,
    REGISTER_PHONE_TAKEN,
    REGISTER_EMAIL_TAKEN,
  ];

  static final $core.Map<$core.int, RegisterReturnCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RegisterReturnCode? valueOf($core.int value) => _byValue[value];

  const RegisterReturnCode._($core.int v, $core.String n) : super(v, n);
}

class RegisterResponse_ReturnCode extends $pb.ProtobufEnum {
  static const RegisterResponse_ReturnCode SUCCESS = RegisterResponse_ReturnCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const RegisterResponse_ReturnCode PHONE_TAKEN = RegisterResponse_ReturnCode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PHONE_TAKEN');
  static const RegisterResponse_ReturnCode EMAIL_TAKEN = RegisterResponse_ReturnCode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EMAIL_TAKEN');

  static const $core.List<RegisterResponse_ReturnCode> values = <RegisterResponse_ReturnCode> [
    SUCCESS,
    PHONE_TAKEN,
    EMAIL_TAKEN,
  ];

  static final $core.Map<$core.int, RegisterResponse_ReturnCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RegisterResponse_ReturnCode? valueOf($core.int value) => _byValue[value];

  const RegisterResponse_ReturnCode._($core.int v, $core.String n) : super(v, n);
}

