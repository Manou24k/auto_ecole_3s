// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawer_menu.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DrawerMenuController)
final drawerMenuControllerProvider = DrawerMenuControllerProvider._();

final class DrawerMenuControllerProvider
    extends $NotifierProvider<DrawerMenuController, bool> {
  DrawerMenuControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'drawerMenuControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$drawerMenuControllerHash();

  @$internal
  @override
  DrawerMenuController create() => DrawerMenuController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$drawerMenuControllerHash() =>
    r'410ff56f3762df3e637053279535f637b908cab1';

abstract class _$DrawerMenuController extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
