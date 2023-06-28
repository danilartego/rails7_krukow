# Ruby on Rails 7
По урокам

`https://www.youtube.com/playlist?list=PLWlFXymvoaJ_IY53-NQKwLCkR-KkZ_44-`

Создание нового приложения
* -T изключить тесты
* -j esbuild выбор метода сборки javascript
* -css bootstrap обработка стилей css
* ---skip-hotwire не использовать hotwire
```
rails new name_app -T -j esbuild --css bootstrap --skip-hotwire
```
Обновление не обязательное до `yarn 3.x`
```
yarn set version stable
# добавить плагин для обновления
yarn plugin import interactive-tools
# обновление такой командой
yarn upgrade-interactive
```
Для yarn 2.x и выше. Создайте файл `.yarnrc.yml`  В него добавляем вот такой контент:
```
nodeLinker: node-modules
```
Добавить в `package.json`
```
"@rails/ujs": "^7.0.0"
```
Ваш `Procfile.dev` на Windows должен выглядеть вот так:
```
web: ruby bin/rails server -p 3000
js: yarn build --watch
css: yarn build:css --watch
```
Установка библиотеки `Foreman`
```
gem install foreman
```
Запуск в NIX системах
```
bin/dev
```
Запуск в Windows стемах, создать `start.cmd` со строчкой внутри
```
foreman start -f Procfile.dev
```
Найти процесс по порту и удалить
```
lsof -wni tcp:3000
kill -xxxx PID
```