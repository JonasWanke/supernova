import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;
import 'package:rxdart/rxdart.dart';

import 'async.dart';
import 'logger.dart';

extension FileSystemEntitySupernova on FileSystemEntity {
  String get name => p.basename(path);

  String relativePathFrom(Directory directory) =>
      p.relative(path, from: directory.path);
}

extension FileSupernova on File {
  Directory get directory => Directory(p.dirname(path));
  Future<void> createDirectory() => directory.create(recursive: true);

  String relativeDirectoryPathFrom(Directory directory) =>
      p.dirname(relativePathFrom(directory));

  String get nameWithoutExtension => p.basenameWithoutExtension(path);
  String get extension => p.extension(path);
  bool get hasExtension => extension.isNotEmpty;

  Future<File> copyTo(Directory directory) async {
    await directory.create(recursive: true);

    final targetFile = directory ~/ name;
    await copy(targetFile.path);
    return targetFile;
  }
}

extension DirectorySupernova on Directory {
  /// Copies all files in this directory (recursively) to the target directory.
  Future<void> copyContentsTo(Directory targetDirectory) {
    return list(recursive: true)
        .whereType<File>()
        .asyncMap(
          (it) =>
              it.copyTo(targetDirectory / it.relativeDirectoryPathFrom(this)),
        )
        .toFuture();
  }

  Directory operator /(String childPath) => Directory(p.join(path, childPath));

  // Read the `~` as marking the "final" part of the path.
  File operator ~/(String childPath) => File(p.join(path, childPath));
}

extension UriSupernova on Uri {
  Future<void> downloadTo(File file) {
    return logger.traceAsync(
      '$runtimeType.downloadTo',
      data: {'uri': this, 'file': file},
      body: () async {
        final response = await http.get(this);
        await file.createDirectory();
        await file.writeAsBytes(response.bodyBytes);
      },
    );
  }
}
