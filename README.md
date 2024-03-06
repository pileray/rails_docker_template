## 使い方
- これをプロジェクトフォルダにぶち込む
- プロジェクトのディレクトリに移動し、build前に直下にrails関係のファイルを生成しておく`docker-compose run web bundle exec rails new . -f -d mysql`
- この状態でイメージをビルド`docker-compose build`
- DBの設定などは別途行った上でコーディングしていくこと