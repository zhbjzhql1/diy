#!/bin/sh

url="https://github.com/ywt114/kegin-package/releases/download/x86_64-luci-app-passwall_5.15/"  # 指定要下载文件的基础URL
directory="/small/"    # 指定要保存文件的本地目录

# 使用 wget 下载目录内容并保存到文件
wget --no-check-certificate -q -O - "$url" | grep -o -E 'href="[^"]+"' | cut -d'"' -f2 > files.txt

# 逐行读取文件列表并下载每个文件
while read -r file; do
    wget --no-check-certificate "$url$file" -P "$directory"
done < files.txt

# 删除临时文件列表
rm files.txt
