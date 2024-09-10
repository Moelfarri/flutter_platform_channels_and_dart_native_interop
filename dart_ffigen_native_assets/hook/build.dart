import 'package:logging/logging.dart';
import 'package:native_assets_cli/native_assets_cli.dart';
import 'package:native_toolchain_c/native_toolchain_c.dart';

void main(List<String> args) async {
  await build(args, (config, output) async {
    final cbuilder = CBuilder.library(
      name: 'hello_world',
      assetName: 'hello_world.dart',
      sources: [
        'src/hello_world.c',
      ],
    );
    await cbuilder.run(
      config: config,
      output: output,
      logger: Logger('')
        ..level = Level.ALL
        ..onRecord.listen((record) => print(record.message)),
    );
  });
}

extension on BuildConfig {
  List<String> dynamicLinkingFlags(String libraryName) => switch (targetOS) {
        OS.macOS => [
            '-L${outputDirectory.toFilePath()}',
            '-l$libraryName',
          ],
        OS.linux => [
            '-Wl,-rpath=\$ORIGIN/.',
            '-L${outputDirectory.toFilePath()}',
            '-l$libraryName',
          ],
        // TODO(https://github.com/dart-lang/native/issues/1415): Enable support
        // for Windows once linker flags are supported by CBuilder.
        _ => throw UnimplementedError('Unsupported OS: $targetOS'),
      };
}
