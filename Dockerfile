# ベースイメージとしてPython 3.13を使用
FROM python:3.13

# 作業ディレクトリを設定
WORKDIR /app

# requirements.txt をコピー
COPY requirements.txt .

# 仮想環境を作成
RUN python3 -m venv venv

# 仮想環境を有効化し、requirements.txt からパッケージをインストール
RUN /bin/bash -c "source venv/bin/activate && pip install -r requirements.txt"