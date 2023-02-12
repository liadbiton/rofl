///
//  Generated code. Do not modify.
//  source: protocol/protocol.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'register_request.pb.dart' as $0;

enum AppRequest_Request {
  registerRequest, 
  notSet
}

class AppRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, AppRequest_Request> _AppRequest_RequestByTag = {
    1 : AppRequest_Request.registerRequest,
    0 : AppRequest_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppRequest', createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<$0.RegisterRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'registerRequest', subBuilder: $0.RegisterRequest.create)
    ..hasRequiredFields = false
  ;

  AppRequest._() : super();
  factory AppRequest({
    $0.RegisterRequest? registerRequest,
  }) {
    final _result = create();
    if (registerRequest != null) {
      _result.registerRequest = registerRequest;
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
  $0.RegisterRequest get registerRequest => $_getN(0);
  @$pb.TagNumber(1)
  set registerRequest($0.RegisterRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRegisterRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRegisterRequest() => clearField(1);
  @$pb.TagNumber(1)
  $0.RegisterRequest ensureRegisterRequest() => $_ensure(0);
}

