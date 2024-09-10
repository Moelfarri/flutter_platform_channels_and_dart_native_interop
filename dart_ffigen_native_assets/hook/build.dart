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
