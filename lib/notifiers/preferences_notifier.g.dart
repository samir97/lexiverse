// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$preferencesRepositoryHash() =>
    r'db4549bdf1f55762cdaeff3fe125dbeeab1fb335';

/// See also [preferencesRepository].
@ProviderFor(preferencesRepository)
final preferencesRepositoryProvider =
    AutoDisposeProvider<PreferencesRepository>.internal(
  preferencesRepository,
  name: r'preferencesRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$preferencesRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PreferencesRepositoryRef
    = AutoDisposeProviderRef<PreferencesRepository>;
String _$preferencesNotifierHash() =>
    r'71cfdb9e3696e57a575eeb6cec2ba119adc962cc';

/// See also [PreferencesNotifier].
@ProviderFor(PreferencesNotifier)
final preferencesNotifierProvider =
    NotifierProvider<PreferencesNotifier, Preferences>.internal(
  PreferencesNotifier.new,
  name: r'preferencesNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$preferencesNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PreferencesNotifier = Notifier<Preferences>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
