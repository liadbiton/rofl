///
//  Generated code. Do not modify.
//  source: protocol/protocol.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use appRequestDescriptor instead')
const AppRequest$json = const {
  '1': 'AppRequest',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 13, '10': 'version'},
    const {'1': 'session_token', '3': 2, '4': 1, '5': 13, '9': 1, '10': 'sessionToken', '17': true},
    const {'1': 'request_id', '3': 3, '4': 1, '5': 13, '10': 'requestId'},
    const {'1': 'register_request', '3': 4, '4': 1, '5': 11, '6': '.RegisterRequest', '9': 0, '10': 'registerRequest'},
    const {'1': 'logic_request', '3': 5, '4': 1, '5': 11, '6': '.LoginRequest', '9': 0, '10': 'logicRequest'},
  ],
  '8': const [
    const {'1': 'request'},
    const {'1': '_session_token'},
  ],
};

/// Descriptor for `AppRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appRequestDescriptor = $convert.base64Decode('CgpBcHBSZXF1ZXN0EhgKB3ZlcnNpb24YASABKA1SB3ZlcnNpb24SKAoNc2Vzc2lvbl90b2tlbhgCIAEoDUgBUgxzZXNzaW9uVG9rZW6IAQESHQoKcmVxdWVzdF9pZBgDIAEoDVIJcmVxdWVzdElkEj0KEHJlZ2lzdGVyX3JlcXVlc3QYBCABKAsyEC5SZWdpc3RlclJlcXVlc3RIAFIPcmVnaXN0ZXJSZXF1ZXN0EjQKDWxvZ2ljX3JlcXVlc3QYBSABKAsyDS5Mb2dpblJlcXVlc3RIAFIMbG9naWNSZXF1ZXN0QgkKB3JlcXVlc3RCEAoOX3Nlc3Npb25fdG9rZW4=');
@$core.Deprecated('Use appResponseDescriptor instead')
const AppResponse$json = const {
  '1': 'AppResponse',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 1, '5': 13, '10': 'requestId'},
    const {'1': 'register_response', '3': 2, '4': 1, '5': 11, '6': '.RegisterResponse', '9': 0, '10': 'registerResponse'},
    const {'1': 'login_response', '3': 3, '4': 1, '5': 11, '6': '.LoginResponse', '9': 0, '10': 'loginResponse'},
  ],
  '8': const [
    const {'1': 'response'},
  ],
};

/// Descriptor for `AppResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appResponseDescriptor = $convert.base64Decode('CgtBcHBSZXNwb25zZRIdCgpyZXF1ZXN0X2lkGAEgASgNUglyZXF1ZXN0SWQSQAoRcmVnaXN0ZXJfcmVzcG9uc2UYAiABKAsyES5SZWdpc3RlclJlc3BvbnNlSABSEHJlZ2lzdGVyUmVzcG9uc2USNwoObG9naW5fcmVzcG9uc2UYAyABKAsyDi5Mb2dpblJlc3BvbnNlSABSDWxvZ2luUmVzcG9uc2VCCgoIcmVzcG9uc2U=');
