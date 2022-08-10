# App Rename

### App Rename Code is copied from https://github.com/Syed-Waleed-Shah/rename_app. I have just updated xml version because it was not working.

## Features 🔥

✅ Rename Android Project ✅ Rename IOS Project ✅ Rename WEB Project ✅ Rename Windows Project

## How To Rename ? 🛠

##### 1) ADD THE PACKAGE TO DEPENDENCIES IN pubspec.yaml

```sh
flutter pub add app_rename
```

OR

```sh
dependencies:
  app_rename: ^latest_version
```

##### 2) PROVIDE THE APP NAME

You can provide app name in the following ways

##### Same name for all apps

```sh
flutter pub run app_rename:main all="My App Name"
```

##### Separate name for specified platform(s) and same for all others

```sh
flutter pub run app_rename:main android="Android Name" ios="IOS Name" others="Others Name"
```

##### Separate name for each platform

```sh
flutter pub run app_rename:main android="Android Name" ios="IOS Name" web="Web Name" mac="Mac Name" windows="Windows Name" 
```

## More Flexibilities 😎

| REQUIREMENT | COMMAND |
| ------ | ------ |
| All Same| ```flutter pub run rename_app:main all="App Name"``` |
| Only Android | ```flutter pub run rename_app:main android="Android App"``` |
| Only IOS | ```flutter pub run rename_app:main ios="IOS App"``` |
| Only WEB | ```flutter pub run rename_app:main web="Web App"``` |
| ONLY Windows | ```flutter pub run rename_app:main windows="Windows App"``` |
| With Others |```flutter pub run rename_app:main android="Android App" ios="IOS App" others="Others App Name"``` |