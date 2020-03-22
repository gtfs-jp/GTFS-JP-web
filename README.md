GTFS-JPは[General Transit Feed Specification(GTFS)](https://github.com/google/transit/tree/master/gtfs/spec/en)を元に、日本独自の交通事情を加味しながら拡張されたフォーマットです。国内の幅広い方に参加してもらうためこのリポジトリでの作業・ディスカッション(commitやissue、pull requestなど)は日本語で行うこととします。ただし、日本語に長けていない人の参加を拒むものではありません。その際は彼/彼女の参加を、他の参加者が積極的に補助することをこととします。

GTFS-JP is extended format based on [General Transit Feed Specification(GTFS)](https://github.com/google/transit/tree/master/gtfs/spec/en) for containing japanese special circumstances. For the sake of more commiters who familiar with japanese transportation, common language
in this repositry is japanese language. But this rule **does not refuse** joining commiters who is poor at Japanese language.Other commiters help him/her.

# GTFS-JP-Web
GTFS-JPの開発者ポータルです。このリポジトリは以下の役割を持っています。
* GTFS-JPを解説するポータルサイト https://www.gtfs.jp/ のソース

## gtfs.jpのソースとして
このリポジトリのファイルは、GTFS-JPを解説するポータルサイトの構築するためのデータです。このサイトはGTFS-JPに基づくデータを作成する方、およびそれを利用する開発者を助けるものです。

静的サイトフレームワークの[middleman](https://middlemanapp.com/jp/)を使っています。

### ポータルサイトの役割
このポータルサイトの役割は以下を想定しています。
* これから「標準的なバス情報フォーマット」に基づくデータをつくる人を助ける情報を掲載する
* コミュニティでの議論の最新の結果を表す
* GTFS-JPに基づいて作成されオープンデータ化されたデータを一覧する(構想段階)

### ローカルでの開発
ローカルでの開発で使うコマンドは以下の通りです。

必要なgemのインストール
```
$ bundle install --path vendor/bundle
```

middlemanサーバーの起動
```
$ bundle exec middleman
```
ローカルにWeb サーバを起動され、ブラウザで`http://localhost:4567/`にアクセスすると、`/source`以下について反映された変更を確認することができます。
[LiveReload](https://middlemanapp.com/jp/basics/development-cycle/#livereload)を導入しています。

サイトのビルド
```
$ bundle exec middleman build
```
上記コマンドを実行すると`/build`ディレクトリに成果物がビルドされます。

###  ホスティング
ホスティングしている場所はこちらです。
https://www.gtfs.jp/

このリポジトリにpushされるとCIの[wercker](https://app.wercker.com/)が走り、自動でデプロイされます。実行内容は wercker.yml を参照ないし編集してください。

masterブランチの成果物は `gtfs.jp/` 直下に、それ以外のブランチは `https://www.gtfs.jp/testsite/{ブランチ名}/` にデプロイされます。後者はプルリクの確認などで用いることができます。

werckerは @kumatira が管理しています。Github Actionsに乗り換えたい...


### 開発の流れ
「標準的なバス情報フォーマット」の仕様変更などが更新のトリガーとして考えられます。また解説や事例の追加、デザイン変更などポータルサイト自体の改修も行うことができます。

Pull Requestには、例えば対応issueなどレビュワーがレビューする上で参考になる材料を極力含めるようにします。
