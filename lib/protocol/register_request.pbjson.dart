///
//  Generated code. Do not modify.
//  source: protocol/register_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use registerReturnCodeDescriptor instead')
const RegisterReturnCode$json = const {
  '1': 'RegisterReturnCode',
  '2': const [
    const {'1': 'REGISTER_SUCCESS', '2': 0},
    const {'1': 'REGISTER_PHONE_TAKEN', '2': 1},
    const {'1': 'REGISTER_EMAIL_TAKEN', '2': 2},
  ],
};

/// Descriptor for `RegisterReturnCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List registerReturnCodeDescriptor = $convert.base64Decode('ChJSZWdpc3RlclJldHVybkNvZGUSFAoQUkVHSVNURVJfU1VDQ0VTUxAAEhgKFFJFR0lTVEVSX1BIT05FX1RBS0VOEAESGAoUUkVHSVNURVJfRU1BSUxfVEFLRU4QAg==');
@$core.Deprecated('Use volunteerUniqueRegisterParametersDescriptor instead')
const VolunteerUniqueRegisterParameters$json = const {
  '1': 'VolunteerUniqueRegisterParameters',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `VolunteerUniqueRegisterParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volunteerUniqueRegisterParametersDescriptor = $convert.base64Decode('CiFWb2x1bnRlZXJVbmlxdWVSZWdpc3RlclBhcmFtZXRlcnMSFAoFZW1haWwYASABKAlSBWVtYWls');
@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = const {
  '1': 'RegisterRequest',
  '2': const [
    const {'1': 'is_volunteer', '3': 1, '4': 1, '5': 8, '10': 'isVolunteer'},
    const {'1': 'first_name', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'address', '3': 5, '4': 1, '5': 11, '6': '.HomeAddress', '10': 'address'},
    const {'1': 'phone_number', '3': 6, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'id_number', '3': 7, '4': 1, '5': 9, '10': 'idNumber'},
    const {'1': 'birthday', '3': 8, '4': 1, '5': 11, '6': '.Date', '10': 'birthday'},
    const {'1': 'fcm_token', '3': 9, '4': 1, '5': 9, '9': 0, '10': 'fcmToken', '17': true},
    const {'1': 'volunteer_parameters', '3': 10, '4': 1, '5': 11, '6': '.RegisterRequest.VolunteerParameters', '9': 1, '10': 'volunteerParameters', '17': true},
  ],
  '3': const [RegisterRequest_VolunteerParameters$json],
  '8': const [
    const {'1': '_fcm_token'},
    const {'1': '_volunteer_parameters'},
  ],
};

@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest_VolunteerParameters$json = const {
  '1': 'VolunteerParameters',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode('Cg9SZWdpc3RlclJlcXVlc3QSIQoMaXNfdm9sdW50ZWVyGAEgASgIUgtpc1ZvbHVudGVlchIdCgpmaXJzdF9uYW1lGAIgASgJUglmaXJzdE5hbWUSGwoJbGFzdF9uYW1lGAMgASgJUghsYXN0TmFtZRIaCghwYXNzd29yZBgEIAEoCVIIcGFzc3dvcmQSJgoHYWRkcmVzcxgFIAEoCzIMLkhvbWVBZGRyZXNzUgdhZGRyZXNzEiEKDHBob25lX251bWJlchgGIAEoCVILcGhvbmVOdW1iZXISGwoJaWRfbnVtYmVyGAcgASgJUghpZE51bWJlchIhCghiaXJ0aGRheRgIIAEoCzIFLkRhdGVSCGJpcnRoZGF5EiAKCWZjbV90b2tlbhgJIAEoCUgAUghmY21Ub2tlbogBARJcChR2b2x1bnRlZXJfcGFyYW1ldGVycxgKIAEoCzIkLlJlZ2lzdGVyUmVxdWVzdC5Wb2x1bnRlZXJQYXJhbWV0ZXJzSAFSE3ZvbHVudGVlclBhcmFtZXRlcnOIAQEaKwoTVm9sdW50ZWVyUGFyYW1ldGVycxIUCgVlbWFpbBgBIAEoCVIFZW1haWxCDAoKX2ZjbV90b2tlbkIXChVfdm9sdW50ZWVyX3BhcmFtZXRlcnM=');
@$core.Deprecated('Use registerResponseDescriptor instead')
const RegisterResponse$json = const {
  '1': 'RegisterResponse',
  '2': const [
    const {'1': 'return_code', '3': 1, '4': 1, '5': 14, '6': '.RegisterResponse.ReturnCode', '10': 'returnCode'},
    const {'1': 'response_data', '3': 2, '4': 1, '5': 11, '6': '.RegisterResponse.ResponseData', '9': 0, '10': 'responseData', '17': true},
  ],
  '3': const [RegisterResponse_ResponseData$json],
  '4': const [RegisterResponse_ReturnCode$json],
  '8': const [
    const {'1': '_response_data'},
  ],
};

@$core.Deprecated('Use registerResponseDescriptor instead')
const RegisterResponse_ResponseData$json = const {
  '1': 'ResponseData',
  '2': const [
    const {'1': 'session_token', '3': 1, '4': 1, '5': 9, '10': 'sessionToken'},
  ],
};

@$core.Deprecated('Use registerResponseDescriptor instead')
const RegisterResponse_ReturnCode$json = const {
  '1': 'ReturnCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'PHONE_TAKEN', '2': 1},
    const {'1': 'EMAIL_TAKEN', '2': 2},
  ],
};

/// Descriptor for `RegisterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerResponseDescriptor = $convert.base64Decode('ChBSZWdpc3RlclJlc3BvbnNlEj0KC3JldHVybl9jb2RlGAEgASgOMhwuUmVnaXN0ZXJSZXNwb25zZS5SZXR1cm5Db2RlUgpyZXR1cm5Db2RlEkgKDXJlc3BvbnNlX2RhdGEYAiABKAsyHi5SZWdpc3RlclJlc3BvbnNlLlJlc3BvbnNlRGF0YUgAUgxyZXNwb25zZURhdGGIAQEaMwoMUmVzcG9uc2VEYXRhEiMKDXNlc3Npb25fdG9rZW4YASABKAlSDHNlc3Npb25Ub2tlbiI7CgpSZXR1cm5Db2RlEgsKB1NVQ0NFU1MQABIPCgtQSE9ORV9UQUtFThABEg8KC0VNQUlMX1RBS0VOEAJCEAoOX3Jlc3BvbnNlX2RhdGE=');
