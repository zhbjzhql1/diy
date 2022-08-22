sudo rm -rf /usr/share/dotnet /etc/mysql /etc/php /etc/apt/sources.list.d /usr/local/lib/android /opt/ghc

sudo -E apt-get -y update

sudo -E apt-get -y purge azure-cli ghc* zulu* hhvm llvm* firefox google* dotnet* powershell openjdk* adoptopenjdk* mysql* php* mongodb* dotnet* moby* snapd* || true

sudo -E apt-get -y install rename lib32gcc-s1 xsltproc ack antlr3 asciidoc autoconf automake autopoint binutils bison build-essential bzip2 ccache cmake cpio curl device-tree-compiler fastjar flex gawk gettext gcc-multilib g++-multilib git gperf haveged help2man intltool libc6-dev-i386 libelf-dev libglib2.0-dev libgmp3-dev libltdl-dev libmpc-dev libmpfr-dev libncurses5-dev libncursesw5-dev libreadline-dev libssl-dev libtool lrzsz mkisofs msmtp nano ninja-build p7zip p7zip-full patch pkgconf python2.7 python3 python3-pip libpython3-dev qemu-utils rsync scons squashfs-tools subversion swig texinfo uglifyjs upx-ucl unzip vim wget xmlto xxd zlib1g-dev

sudo -E apt-get -y autoremove --purge

sudo -E apt-get clean

sudo timedatectl set-timezone "Asia/Shanghai"

git clone https://github.com/coolsnowwolf/lede

cd lede

./scripts/feeds update -a

./scripts/feeds install -a

make defconfig

make download -j1 V=s

find dl -size -1024c -exec ls -l {} \;

find dl -size -1024c -exec rm -f {} \;

make -j1 V=s
