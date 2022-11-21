import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:insta_clone/src/services/data_services.dart';

final dataProvider = FutureProvider.autoDispose((ref) async {
  final int len = ref.watch(dataServiceProvider).datas.length;
  if (len <= 0) {
    ref.watch(dataServiceProvider).getData();
  }
  return ref.watch(dataServiceProvider).datas;
});

final dataIndexProvider =
    Provider.autoDispose(((ref) => ref.watch(dataServiceProvider).index));
