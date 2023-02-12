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
@$core.Deprecated('Use homeAddressDescriptor instead')
const HomeAddress$json = const {
  '1': 'HomeAddress',
  '2': const [
    const {'1': 'textual', '3': 1, '4': 1, '5': 9, '10': 'textual'},
    const {'1': 'latitude', '3': 2, '4': 1, '5': 2, '10': 'latitude'},
    const {'1': 'longitude', '3': 3, '4': 1, '5': 2, '10': 'longitude'},
  ],
};

/// Descriptor for `HomeAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List homeAddressDescriptor = $convert.base64Decode('CgtIb21lQWRkcmVzcxIYCgd0ZXh0dWFsGAEgASgJUgd0ZXh0dWFsEhoKCGxhdGl0dWRlGAIgASgCUghsYXRpdHVkZRIcCglsb25naXR1ZGUYAyABKAJSCWxvbmdpdHVkZQ==');
@$core.Deprecated('Use dateDescriptor instead')
const Date$json = const {
  '1': 'Date',
  '2': const [
    const {'1': 'day', '3': 1, '4': 1, '5': 13, '10': 'day'},
    const {'1': 'month', '3': 2, '4': 1, '5': 13, '10': 'month'},
    const {'1': 'year', '3': 3, '4': 1, '5': 13, '10': 'year'},
  ],
};

/// Descriptor for `Date`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dateDescriptor = $convert.base64Decode('CgREYXRlEhAKA2RheRgBIAEoDVIDZGF5EhQKBW1vbnRoGAIgASgNUgVtb250aBISCgR5ZWFyGAMgASgNUgR5ZWFy');
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
    const {'1': 'volunteer_parameters', '3': 10, '4': 1, '5': 11, '6': '.VolunteerUniqueRegisterParameters', '9': 1, '10': 'volunteerParameters', '17': true},
  ],
  '8': const [
    const {'1': '_fcm_token'},
    const {'1': '_volunteer_parameters'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode('Cg9SZWdpc3RlclJlcXVlc3QSIQoMaXNfdm9sdW50ZWVyGAEgASgIUgtpc1ZvbHVudGVlchIdCgpmaXJzdF9uYW1lGAIgASgJUglmaXJzdE5hbWUSGwoJbGFzdF9uYW1lGAMgASgJUghsYXN0TmFtZRIaCghwYXNzd29yZBgEIAEoCVIIcGFzc3dvcmQSJgoHYWRkcmVzcxgFIAEoCzIMLkhvbWVBZGRyZXNzUgdhZGRyZXNzEiEKDHBob25lX251bWJlchgGIAEoCVILcGhvbmVOdW1iZXISGwoJaWRfbnVtYmVyGAcgASgJUghpZE51bWJlchIhCghiaXJ0aGRheRgIIAEoCzIFLkRhdGVSCGJpcnRoZGF5EiAKCWZjbV90b2tlbhgJIAEoCUgAUghmY21Ub2tlbogBARJaChR2b2x1bnRlZXJfcGFyYW1ldGVycxgKIAEoCzIiLlZvbHVudGVlclVuaXF1ZVJlZ2lzdGVyUGFyYW1ldGVyc0gBUhN2b2x1bnRlZXJQYXJhbWV0ZXJziAEBQgwKCl9mY21fdG9rZW5CFwoVX3ZvbHVudGVlcl9wYXJhbWV0ZXJz');
@$core.Deprecated('Use registerResponseDescriptor instead')
const RegisterResponse$json = const {
  '1': 'RegisterResponse',
  '2': const [
    const {'1': 'return_code', '3': 1, '4': 1, '5': 14, '6': '.RegisterReturnCode', '10': 'returnCode'},
    const {'1': 'session_token', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'sessionToken', '17': true},
  ],
  '8': const [
    const {'1': '_session_token'},
  ],
};

/// Descriptor for `RegisterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerResponseDescriptor = $convert.base64Decode('ChBSZWdpc3RlclJlc3BvbnNlEjQKC3JldHVybl9jb2RlGAEgASgOMhMuUmVnaXN0ZXJSZXR1cm5Db2RlUgpyZXR1cm5Db2RlEigKDXNlc3Npb25fdG9rZW4YAiABKAlIAFIMc2Vzc2lvblRva2VuiAEBQhAKDl9zZXNzaW9uX3Rva2Vu');
