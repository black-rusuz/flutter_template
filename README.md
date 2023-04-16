# flutter_template

Шаблон проектов на Flutter

<hr>

## Запуск

```shell
flutter pub upgrade
```

```shell
flutter pub get
```

```shell
flutter pub run build_runner build --delete-conflicting-outputs 
```

<hr>

## Инфо

Ну типа чистая архитектура с поправкой на похуизм.

`/data` — слой данных

`/domain` — слой бизнес-логики

`/presentation` — слой представления

Слоя внедрения зависимостей у меня нет. ~~Он нахуй и не нужен.~~ Зато есть `injection.config.dart`