#!/bin/bash

URL="https://github.com/ywt114/kegin-package/releases/download/x86_64-luci-app-passwall_5.15/"
DIRECTORY="/small/"

# 使用wget下载指定目录下的所有.zip文件
for file in $(wget -qO- $URL | grep -o '<a href="[^"]*\.ipk"' | sed 's/<a href="//' | sed 's/"//'); do
    wget --no-check-certificate "$URL$file" -P "$DIRECTORY"
done
