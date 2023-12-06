import 'package:get_it/get_it.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../entity/note_entity.dart';
import '../objectbox.g.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  await _setupLocalDI();
}

Future<void> _setupLocalDI() async {
  final store = await openStore(
      directory:
          p.join((await getApplicationDocumentsDirectory()).path, "obx-demo"));
  getIt.registerSingleton<Box<NoteEntity>>(store.box<NoteEntity>());

  if (Admin.isAvailable()) {
    // Keep a reference until no longer needed or manually closed.
    var admin = Admin(store);
  }
}
