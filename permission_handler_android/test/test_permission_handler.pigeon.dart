// Autogenerated from Pigeon (v11.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, unnecessary_import
// ignore_for_file: avoid_relative_lib_imports
import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;
import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:permission_handler_android/src/permission_handler.pigeon.dart';

class _ActivityTestHostApiCodec extends StandardMessageCodec {
  const _ActivityTestHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is PermissionRequestResult) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128: 
        return PermissionRequestResult.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

/// Host API for `Activity`.
///
/// This class may handle instantiating and adding native object instances that
/// are attached to a Dart instance or handle method calls on the associated
/// native class or an instance of the class.
///
/// See https://developer.android.com/reference/android/app/Activity.
abstract class ActivityTestHostApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding => TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> codec = _ActivityTestHostApiCodec();

  /// Gets whether the application should show UI with rationale before requesting a permission.
  ///
  /// See https://developer.android.com/reference/android/app/Activity.html#shouldShowRequestPermissionRationale(java.lang.String).
  bool shouldShowRequestPermissionRationale(String activityInstanceId, String permission);

  /// Determine whether the application has been granted a particular permission.
  ///
  /// See https://developer.android.com/reference/android/content/ContextWrapper#checkSelfPermission(java.lang.String).
  int checkSelfPermission(String activityInstanceId, String permission);

  /// Requests permissions to be granted to this application.
  ///
  /// Contrary to the Android SDK, we do not make use of a `requestCode`, as
  /// permission results are returned as a [Future] instead of through a
  /// separate callback.
  ///
  /// See
  /// https://developer.android.com/reference/android/app/Activity#requestPermissions(java.lang.String[],%20int)
  /// and
  /// https://developer.android.com/reference/android/app/Activity#onRequestPermissionsResult(int,%20java.lang.String[],%20int[]).
  Future<PermissionRequestResult> requestPermissions(String activityInstanceId, List<String?> permissions);

  static void setup(ActivityTestHostApi? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.permission_handler_android.ActivityHostApi.shouldShowRequestPermissionRationale', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.permission_handler_android.ActivityHostApi.shouldShowRequestPermissionRationale was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_activityInstanceId = (args[0] as String?);
          assert(arg_activityInstanceId != null,
              'Argument for dev.flutter.pigeon.permission_handler_android.ActivityHostApi.shouldShowRequestPermissionRationale was null, expected non-null String.');
          final String? arg_permission = (args[1] as String?);
          assert(arg_permission != null,
              'Argument for dev.flutter.pigeon.permission_handler_android.ActivityHostApi.shouldShowRequestPermissionRationale was null, expected non-null String.');
          final bool output = api.shouldShowRequestPermissionRationale(arg_activityInstanceId!, arg_permission!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.permission_handler_android.ActivityHostApi.checkSelfPermission', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.permission_handler_android.ActivityHostApi.checkSelfPermission was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_activityInstanceId = (args[0] as String?);
          assert(arg_activityInstanceId != null,
              'Argument for dev.flutter.pigeon.permission_handler_android.ActivityHostApi.checkSelfPermission was null, expected non-null String.');
          final String? arg_permission = (args[1] as String?);
          assert(arg_permission != null,
              'Argument for dev.flutter.pigeon.permission_handler_android.ActivityHostApi.checkSelfPermission was null, expected non-null String.');
          final int output = api.checkSelfPermission(arg_activityInstanceId!, arg_permission!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.permission_handler_android.ActivityHostApi.requestPermissions', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.permission_handler_android.ActivityHostApi.requestPermissions was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_activityInstanceId = (args[0] as String?);
          assert(arg_activityInstanceId != null,
              'Argument for dev.flutter.pigeon.permission_handler_android.ActivityHostApi.requestPermissions was null, expected non-null String.');
          final List<String?>? arg_permissions = (args[1] as List<Object?>?)?.cast<String?>();
          assert(arg_permissions != null,
              'Argument for dev.flutter.pigeon.permission_handler_android.ActivityHostApi.requestPermissions was null, expected non-null List<String?>.');
          final PermissionRequestResult output = await api.requestPermissions(arg_activityInstanceId!, arg_permissions!);
          return <Object?>[output];
        });
      }
    }
  }
}

/// Host API for `Context`.
///
/// This class may handle instantiating and adding native object instances that
/// are attached to a Dart instance or handle method calls on the associated
/// native class or an instance of the class.
///
/// See https://developer.android.com/reference/android/content/Context.
abstract class ContextTestHostApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding => TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> codec = StandardMessageCodec();

  /// Determine whether the application has been granted a particular permission.
  int checkSelfPermission(String activityInstanceId, String permission);

  static void setup(ContextTestHostApi? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.permission_handler_android.ContextHostApi.checkSelfPermission', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.permission_handler_android.ContextHostApi.checkSelfPermission was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_activityInstanceId = (args[0] as String?);
          assert(arg_activityInstanceId != null,
              'Argument for dev.flutter.pigeon.permission_handler_android.ContextHostApi.checkSelfPermission was null, expected non-null String.');
          final String? arg_permission = (args[1] as String?);
          assert(arg_permission != null,
              'Argument for dev.flutter.pigeon.permission_handler_android.ContextHostApi.checkSelfPermission was null, expected non-null String.');
          final int output = api.checkSelfPermission(arg_activityInstanceId!, arg_permission!);
          return <Object?>[output];
        });
      }
    }
  }
}