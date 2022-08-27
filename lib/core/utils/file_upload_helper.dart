import 'package:get/get.dart';
import 'package:file_picker/file_picker.dart';

class FileManager {
  Future filePickerMethod(int maxFileSize, List<String>? allowedExtensions,
      {void Function(List<String?>)? getFiles}) async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: allowedExtensions);
    List<String?> filesList = [];
    if (result != null) {
      for (var element in result.files) {
        if (element.size <= maxFileSize) {
          filesList.add(element.path);
        } else {
          Get.snackbar('msg', 'file size should not be more than $maxFileSize');
        }
      }
    }
    if (getFiles != null) {
      getFiles(filesList);
    }
  }
}
