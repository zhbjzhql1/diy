cd lede

git pull

./scripts/feeds update -a

./scripts/feeds install -a

curl -fsSL  https://raw.githubusercontent.com/ywt114/Actions-OpenWrt/main/.config > .config

curl -fsSL  https://raw.githubusercontent.com/ywt114/Actions-OpenWrt/main/diy-part2.sh > diy.sh

chmod +x diy.sh

./diy.sh

cd ~

cd lede

make defconfig

./scripts/diffconfig.sh > .diffconfig

make download -j$(nproc)

find dl -size -1024c -exec ls -l {} \;

find dl -size -1024c -exec rm -f {} \;

echo -e "$(($(nproc)+1)) thread compile"

make -j$(($(nproc)+1)) || make -j1 V=s
