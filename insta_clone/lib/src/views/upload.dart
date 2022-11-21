import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:insta_clone/src/providers/upload_provider.dart';
import 'package:insta_clone/src/services/data_services.dart';

class Upload extends ConsumerWidget {
  const Upload({super.key});

  Widget _selectedImage(WidgetRef ref) {
    final imageFile = ref.watch(uploadDataProvider);
    return Expanded(
      child: imageFile.when(
          data: (path) {
            if (path == null) {
              return const Center(child: Text("No Selected Image"));
            }
            return Image.file(path);
          },
          error: (e, s) => Center(child: Text(e.toString())),
          loading: () => const Center(
                child: CircularProgressIndicator(),
              )),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  ref.read(dataServiceProvider.notifier).updateData({
                    "image": "test",
                    "likes": 5,
                    "user": "iam user",
                    "content": "thisis content"
                  });
                },
                icon: const Icon(Icons.send))
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('이미지업로드화면'),
            _selectedImage(ref),
            const TextField(),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close))
          ],
        ));
  }
}
