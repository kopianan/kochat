import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:mime/mime.dart';

class FileUtil {
  static Future<File?> pickImages() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      allowCompression: true,
      type: FileType.image,
    );
    if (result == null) return null;
    final singleImage = result.files.single.path;
    if (singleImage == null) return null;
    final file = File(singleImage);
    return file;
  }
}
