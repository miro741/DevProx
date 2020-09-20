#!/usr/bin/env bash
THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR
install() {
echo -e "\e[38;5;77m • Welcome to Source DevProx - اهلا بك في سورس ديف بروكس •\e[0m"
echo -e "\e[38;5;77m      •{ Setting up offices - جاري رفع المكاتب } •\e[0m"
echo -e "\e[38;5;77m • Installing Source DevProx - جاري تحميل سورس ديف بروكس •\e[0m"
echo -e "\e[38;5;77m                             {0%}\e[0m"
sudo apt-get update
sudo apt-get upgrade -y
reset
echo -e "\e[38;5;77m • Installing Source DevProx - جاري تحميل سورس ديف بروكس •\e[0m"
echo -e "\e[38;5;77m                             {10%}\e[0m"
sudo apt-get install lua-lgi -y
sudo apt-get install software-properties-common -y
reset
echo -e "\e[38;5;77m • Installing Source DevProx - جاري تحميل سورس ديف بروكس •\e[0m"
echo -e "\e[38;5;77m                             {20%}\e[0m"
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get install libstdc++6 -y
reset
echo -e "\e[38;5;77m • Installing Source DevProx - جاري تحميل سورس ديف بروكس •\e[0m"
echo -e "\e[38;5;77m                             {30%}\e[0m"
sudo luarocks install luasec
sudo luarocks install luasocket
reset
echo -e "\e[38;5;77m • Installing Source DevProx - جاري تحميل سورس ديف بروكس •\e[0m"
echo -e "\e[38;5;77m                             {40%}\e[0m"
sudo luarocks install redis-lua
sudo luarocks install lua-term
reset
echo -e "\e[38;5;77m • Installing Source DevProx - جاري تحميل سورس ديف بروكس •\e[0m"
echo -e "\e[38;5;77m                             {50%}\e[0m"
sudo luarocks install serpent
sudo luarocks install dkjson
reset
echo -e "\e[38;5;77m • Installing Source DevProx - جاري تحميل سورس ديف بروكس •\e[0m"
echo -e "\e[38;5;77m                             {60%}\e[0m"
sudo luarocks install Lua-cURL
sudo luarocks install luautf8
reset
echo -e "\e[38;5;77m • Installing Source DevProx - جاري تحميل سورس ديف بروكس •\e[0m"
echo -e "\e[38;5;77m                             {70%}\e[0m"
sudo service redis-server start
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
reset
echo -e "\e[38;5;77m • Installing Source DevProx - جاري تحميل سورس ديف بروكس •\e[0m"
echo -e "\e[38;5;77m                             {80%}\e[0m"
sudo apt-get install g++-4.7 -y c++-4.7
sudo apt-get install libreadline-dev -y libconfig-dev -y libssl-dev -y lua5.2 -y liblua5.2-dev -y lua-socket -y lua-sec -y lua-expat -y libevent-dev -y make unzip git redis-server autoconf g++ -y libjansson-dev -y libpython-dev -y expat libexpat1-dev -y
reset
echo -e "\e[38;5;77m • Installing Source DevProx - جاري تحميل سورس ديف بروكس •\e[0m"
echo -e "\e[38;5;77m                             {90%}\e[0m"
sudo apt-get install screen -y
sudo apt-get install tmux -y
reset
echo -e "\e[38;5;77m • Installing Source DevProx - جاري تحميل سورس ديف بروكس •\e[0m"
echo -e "\e[38;5;77m                             {100%}\e[0m"
sudo apt-get install lua-space -y
sudo apt-get install libnotify-dev -y
reset
echo -e "\e[38;5;77m    ---------------------------------------------\e[0m"
echo -e "\e[38;5;77m    |    ____             ____                  |\e[0m"
echo -e "\e[38;5;77m    |   |  _ \  _____   _|  _ \ _ __ _____  __  |\e[0m"
echo -e "\e[38;5;77m    |   | | | |/ _ \ \ / / |_) | '__/ _ \ \/ /  |\e[0m"
echo -e "\e[38;5;77m    |   | |_| |  __/\ V /|  __/| | | (_) >  <   |\e[0m"
echo -e "\e[38;5;77m    |   |____/ \___| \_/ |_|   |_|  \___/_/\_\  |\e[0m"
echo -e "\e[38;5;77m    |-------------------------------------------|\e[0m"
echo -e "\e[38;5;77m    |This Source Was Developed By (ABS) @IQ_ABS.|\e[0m"
echo -e "\e[38;5;77m    |  This Is The Source Channel @Dev_Prox .   |\e[0m"
echo -e "\e[38;5;77m    |               - DevProx -                 |\e[0m"
echo -e "\e[38;5;77m    ---------------------------------------------\e[0m"
./tg -s DevProx.lua
}
if [ "$1" = "install" ]; then
install
else
if [ ! -f ./tg ]; then
echo "Tg Is Not Found"
exit 1
fi
./tg -s DevProx.lua
fi
