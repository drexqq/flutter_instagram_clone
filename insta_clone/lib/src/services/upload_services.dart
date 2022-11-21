import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class UploadService {
  Future<File?> getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    return image?.path != null ? File(image!.path) : null;
  }
}

final uploadServiceProvider = Provider.autoDispose((ref) => UploadService());
