import 'dart:io';
import 'dart:ui';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

/// 保存文件
Future<void> saveFile() async {
  final directory = await getApplicationDocumentsDirectory();
  final filePath = '${directory.path}/example.txt';
  final file = File(filePath);
  await file.writeAsString("这是一个示例文本文件");
  await Share.shareXFiles(
    [XFile(filePath)],
    text: "查看下载的文件：",
    sharePositionOrigin: const Rect.fromLTWH(100, 100, 10, 50),
  );
}


/// 选择文件并上传
Future<String> selectFile({List<String> allowedExtensions = const ['xlsx', 'pdf', 'csv']}) async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: allowedExtensions,
  );
  return result?.paths.first ?? '';
}

