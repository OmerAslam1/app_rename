library app_rename;

import 'package:app_rename/app_rename.dart';
import 'package:app_rename/constants.dart';

String? android;
String? ios;
String? web;
String? mac;
String? windows;

void main(List<String> arguments) async {
  if (arguments.isEmpty) {
    print(HELP);
    return;
  }
  parseArguments(arguments);
  print('📱 Android App Name: $android');
  print('📱 IOS App Name: $ios');
  print('💻 Web App Name: $web');
  // print('🖥 MAC App Name: $mac');
  print('💻 Windows App Name: $windows\n\n');

  await AppRename.android(android ?? '');
  await AppRename.ios(ios ?? '');
  await AppRename.web(web ?? '');
  // await RenameApp.mac(mac ?? '');
  await AppRename.windows(windows ?? '');

  print("\n✔️  RENAMED APPS SUCCESSFULLY!");
}

void parseArguments(List<String> args) {
  for (var arg in args) {
    List<String> splitted = arg.split('=');
    if (splitted.length != 2) {
      print(HELP);
      return;
    }
    if (splitted.first == "all") {
      android = splitted.last;
      ios = splitted.last;
      web = splitted.last;
      mac = splitted.last;
      windows = splitted.last;
      return;
    }
    if (splitted.first == "android") {
      android = splitted.last;
    }
    if (splitted.first == "ios") {
      ios = splitted.last;
    }
    if (splitted.first == "web") {
      web = splitted.last;
    }
    if (splitted.first == "mac") {
      mac = splitted.last;
    }
    if (splitted.first == "windows") {
      windows = splitted.last;
    }
    if (splitted.first == "others") {
      android = android ?? splitted.last;
      ios = ios ?? splitted.last;
      web = web ?? splitted.last;
      mac = mac ?? splitted.last;
      windows = windows ?? splitted.last;
    }
  }
}
