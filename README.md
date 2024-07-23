# アプリケーション名

Hobby map  
<br>

# アプリケーション概要

様々な趣味の記録を一つのアプリで管理できる  
<br>


# URL
https://hobbymap.onrender.com  
<br>


# テスト用アカウント

- Basic認証パスワード：swym
- Basic認証ID：3333
- メールアドレス：test@xxx.com
- パスワード：abc123  
<br>


# 利用方法

1. トップページからユーザー新規登録を行う
2. 趣味ごとにトップページが分かれていて、記録したい趣味のトップページへいく（現時点ではゴルフページのみ可能）

## ゴルフページでできること

目標を設定し、目標に向けてどう動いたか、結果がどうだったかを管理できる

- ヘッダーから目標スコア登録、練習内容記録登録
- ゴルフトップページで一覧表示
- 目標スコアは一覧表示で最新のデータを表示
- 練習内容は一覧表示で最新が上に来るように表示  
<br>


# アプリケーションを作成した背景

家族や友人にヒアリングをしたところ趣味が多い人が多数いて、それぞれの趣味をいろいろなアプリで管理するため見返したい時にどこに残したかわからなくなるという課題があると判明。私自身も同じ悩みを抱えていた。
この課題を解決するために再度ヒアリングを行い、趣味別で管理ページを設けた上で登録出来る内容を変更することで、あらゆる趣味に対応した記録アプリを開発することにした。  
<br>

# 実装した機能についての画像やGIFおよびその説明

## トップ画面

ユーザー新規登録、ユーザーログイン
[![Image from Gyazo](https://i.gyazo.com/2311dfc5af445a2ef6ce540025b5aba2.jpg)](https://gyazo.com/2311dfc5af445a2ef6ce540025b5aba2)

趣味の選択
[![Image from Gyazo](https://i.gyazo.com/cc519899e70c2e0f913ae334489e815e.png)](https://gyazo.com/cc519899e70c2e0f913ae334489e815e)


## ユーザー新規登録画面
[![Image from Gyazo](https://i.gyazo.com/7d65f71a36582e989487015d1cebf8a4.png)](https://gyazo.com/7d65f71a36582e989487015d1cebf8a4)

## ユーザーログイン画面
[![Image from Gyazo](https://i.gyazo.com/195b48a94b534bb57fa19208448fa5d0.png)](https://gyazo.com/195b48a94b534bb57fa19208448fa5d0)

## ゴルフトップページ
[![Image from Gyazo](https://i.gyazo.com/05adbcadc1e37c1f81472585cd946b8d.png)](https://gyazo.com/05adbcadc1e37c1f81472585cd946b8d)

## 目標スコア登録画面
[![Image from Gyazo](https://i.gyazo.com/bdcf640739f8a9df2de521e2e99b9855.png)](https://gyazo.com/bdcf640739f8a9df2de521e2e99b9855)

##　　練習記録登録画面
[![Image from Gyazo](https://i.gyazo.com/6b20a5c59cdb0b4ca9042f026804e964.png)](https://gyazo.com/6b20a5c59cdb0b4ca9042f026804e964)

## ラウンド記録登録画面
[![Image from Gyazo](https://i.gyazo.com/cd9c112361a182f541cb12be7a005f2f.png)](https://gyazo.com/cd9c112361a182f541cb12be7a005f2f)  
<br>



# 実装予定の機能

現在ゴルフのラウンド記録登録機能を実装中.

今後は読書と編み物のページを作成し、以下の機能を実装予定
- 読書:読書記録登録機能、一覧表示機能
- 編み物:作成予定リスト、完成作品管理機能  
<br>


# データベース設計

[![Image from Gyazo](https://i.gyazo.com/2a5beb44efffa19bf59a5aefec649eee.png)](https://gyazo.com/2a5beb44efffa19bf59a5aefec649eee)  
<br>

# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/e0b021bf205c039d41340ddbb599249d.png)](https://gyazo.com/e0b021bf205c039d41340ddbb599249d)  
<br>

# 開発環境
- Ruby
- CSS
- HTML
- JavaScript  
<br>


# 工夫したポイント
- ゴルフページで目標スコアを登録した際は、最新のデータがトップページに表示される
- ゴルフページで練習記録を登録した際は、最新のデータが上に表示される
- 様々な趣味を管理できるアプリのため、シンプルでわかりやすいデザイン
