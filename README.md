# About

Python実行環境であるjupyter-notebookをdocker-composeで起動できるリポジトリです。

ローカル環境を汚すことなく、使いたいときだけPython3の実行環境が手に入ります。

```shell
# python --version
Python 3.8.7
```

## Usage

### 1. コンテナ起動

```shell
$ docker-compose up
```

### 2. Chromeでjupyter-notebookを起動

1. `http://localhost:8888/`にアクセス`
2. `docker-compose up`のあとにログが走っているので、下記のようなログを探し、トークンをブラウザ上の`token`にコピペし、`login`
※トークンは起動毎に変わるため、下記は一例

```shell
jupyter-notebook_1  |     To access the notebook, open this file in a browser:
jupyter-notebook_1  |         file:///root/.local/share/jupyter/runtime/nbserver-1-open.html
jupyter-notebook_1  |     Or copy and paste one of these URLs:
jupyter-notebook_1  |         http://7686d34cafd7:8888/?token=275b5b6f2bfa85fb5facb7d31eed03d94e84407d6b749998
jupyter-notebook_1  |      or http://127.0.0.1:8888/?token=275b5b6f2bfa85fb5facb7d31eed03d94e84407d6b749998
```

↓

```shell
token=275b5b6f2bfa85fb5facb7d31eed03d94e84407d6b74999
```

以下がトークン

```shell
275b5b6f2bfa85fb5facb7d31eed03d94e84407d6b74999
```

3. jupyter-notebookの右上にある「New」から「Python 3」を選択
4. 新規ファイルが出来るので、あとはPythonを書いてCommand+Enter(MacOSの場合)で書いたコードを実行。お好きにどうぞ！

---

### 3. その他

#### コンテナ内に入りたいとき

```shell
$ docker-compose exec jupyter-notebook /bin/bash
```

#### コンテナを破棄するとき
※コンテナ内`/var`配下で作成したファイルはローカルPCに残ります

```shell
$ docker-compose down
```
