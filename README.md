# Ruby on Rails 7
По урокам  
https://www.youtube.com/playlist?list=PLWlFXymvoaJ_IY53-NQKwLCkR-KkZ_44-

Создание нового приложения
```
rails new rails7_krukow -T -j esbuild --css bootstrap --skip-hotwire
```
Создайте файл .yarnrc.yml. В него добавляем вот такой контент: 
```
nodeLinker: node-modules
```
Добавить в package.json
```
"@rails/ujs": "^7.0.4-3"
```
Ваш Procfile.dev на Windows должен выглядеть вот так:
```
web: ruby bin/rails server -p 3000
js: yarn build --watch
css: yarn build:css --watch
```
Установите библиотеку Foreman
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
Найти процесс по порту
```
lsof -wni tcp:3000
```
Удалить процесс по PID
```
kill -9 PID
```