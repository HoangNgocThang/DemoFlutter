import 'package:flutter/widgets.dart';
import 'package:my_app/model/config_server.dart';
final ConfigServer initialData = ConfigServer( timeLogout: 30000, version: '1.0');

class ConfigServerProvider with ChangeNotifier {
  final dataConfigServer = initialData;

  ConfigServer get dataConfig => dataConfigServer;
}
