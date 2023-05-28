///
//  Generated code. Do not modify.
//  source: protocol/user_information.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
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
