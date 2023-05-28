///
//  Generated code. Do not modify.
//  source: protocol/user_information.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class HomeAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HomeAddress', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'textual')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  HomeAddress._() : super();
  factory HomeAddress({
    $core.String? textual,
    $core.double? latitude,
    $core.double? longitude,
  }) {
    final _result = create();
    if (textual != null) {
      _result.textual = textual;
    }
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    return _result;
  }
  factory HomeAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HomeAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HomeAddress clone() => HomeAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HomeAddress copyWith(void Function(HomeAddress) updates) => super.copyWith((message) => updates(message as HomeAddress)) as HomeAddress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HomeAddress create() => HomeAddress._();
  HomeAddress createEmptyInstance() => create();
  static $pb.PbList<HomeAddress> createRepeated() => $pb.PbList<HomeAddress>();
  @$core.pragma('dart2js:noInline')
  static HomeAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HomeAddress>(create);
  static HomeAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get textual => $_getSZ(0);
  @$pb.TagNumber(1)
  set textual($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTextual() => $_has(0);
  @$pb.TagNumber(1)
  void clearTextual() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get latitude => $_getN(1);
  @$pb.TagNumber(2)
  set latitude($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLatitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLatitude() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get longitude => $_getN(2);
  @$pb.TagNumber(3)
  set longitude($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLongitude() => $_has(2);
  @$pb.TagNumber(3)
  void clearLongitude() => clearField(3);
}

class Date extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Date', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'day', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'month', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'year', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  Date._() : super();
  factory Date({
    $core.int? day,
    $core.int? month,
    $core.int? year,
  }) {
    final _result = create();
    if (day != null) {
      _result.day = day;
    }
    if (month != null) {
      _result.month = month;
    }
    if (year != null) {
      _result.year = year;
    }
    return _result;
  }
  factory Date.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Date.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Date clone() => Date()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Date copyWith(void Function(Date) updates) => super.copyWith((message) => updates(message as Date)) as Date; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Date create() => Date._();
  Date createEmptyInstance() => create();
  static $pb.PbList<Date> createRepeated() => $pb.PbList<Date>();
  @$core.pragma('dart2js:noInline')
  static Date getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Date>(create);
  static Date? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get day => $_getIZ(0);
  @$pb.TagNumber(1)
  set day($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDay() => $_has(0);
  @$pb.TagNumber(1)
  void clearDay() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get month => $_getIZ(1);
  @$pb.TagNumber(2)
  set month($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMonth() => $_has(1);
  @$pb.TagNumber(2)
  void clearMonth() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get year => $_getIZ(2);
  @$pb.TagNumber(3)
  set year($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasYear() => $_has(2);
  @$pb.TagNumber(3)
  void clearYear() => clearField(3);
}

