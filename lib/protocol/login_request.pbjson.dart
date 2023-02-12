///
//  Generated code. Do not modify.
//  source: protocol/login_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'phone_number', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'phoneNumber'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'email'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
  ],
  '8': const [
    const {'1': 'user_identifier'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode('CgxMb2dpblJlcXVlc3QSIwoMcGhvbmVfbnVtYmVyGAEgASgJSABSC3Bob25lTnVtYmVyEhYKBWVtYWlsGAIgASgJSABSBWVtYWlsEhoKCHBhc3N3b3JkGAMgASgJUghwYXNzd29yZEIRCg91c2VyX2lkZW50aWZpZXI=');
@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = const {
  '1': 'LoginResponse',
  '2': const [
    const {'1': 'return_code', '3': 1, '4': 1, '5': 14, '6': '.LoginResponse.ReturnCode', '10': 'returnCode'},
    const {'1': 'response_data', '3': 2, '4': 1, '5': 11, '6': '.LoginResponse.ResponseData', '9': 0, '10': 'responseData', '17': true},
  ],
  '3': const [LoginResponse_ResponseData$json],
  '4': const [LoginResponse_ReturnCode$json],
  '8': const [
    const {'1': '_response_data'},
  ],
};

@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse_ResponseData$json = const {
  '1': 'ResponseData',
  '2': const [
    const {'1': 'session_token', '3': 1, '4': 1, '5': 9, '10': 'sessionToken'},
  ],
};

@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse_ReturnCode$json = const {
  '1': 'ReturnCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'FAILED', '2': 1},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode('Cg1Mb2dpblJlc3BvbnNlEjoKC3JldHVybl9jb2RlGAEgASgOMhkuTG9naW5SZXNwb25zZS5SZXR1cm5Db2RlUgpyZXR1cm5Db2RlEkUKDXJlc3BvbnNlX2RhdGEYAiABKAsyGy5Mb2dpblJlc3BvbnNlLlJlc3BvbnNlRGF0YUgAUgxyZXNwb25zZURhdGGIAQEaMwoMUmVzcG9uc2VEYXRhEiMKDXNlc3Npb25fdG9rZW4YASABKAlSDHNlc3Npb25Ub2tlbiIlCgpSZXR1cm5Db2RlEgsKB1NVQ0NFU1MQABIKCgZGQUlMRUQQAUIQCg5fcmVzcG9uc2VfZGF0YQ==');
