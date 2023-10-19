import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

final class AppViewListViewModel extends BaseNamedViewListViewModel<BaseDataForNamed> {
  @override
  void dispose() {}

  @override
  // TODO: implement getStreamDataForNamed
  Stream<BaseDataForNamed> get getStreamDataForNamed => throw UnimplementedError();

  @override
  // TODO: implement getDataForNamed
  BaseDataForNamed get getDataForNamed => throw UnimplementedError();

  @override
  Future<String> init() {
    // TODO: implement init
    throw UnimplementedError();
  }

  @override
  void notifyStreamDataForNamed() {
    // TODO: implement notifyStreamDataForNamed
  }
}