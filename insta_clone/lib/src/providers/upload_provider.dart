import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:insta_clone/src/services/upload_services.dart';

final uploadDataProvider = FutureProvider.autoDispose((ref) async {
  return await ref.watch(uploadServiceProvider).getImage();
});
