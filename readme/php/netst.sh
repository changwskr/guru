#apt install net-tools
set -x
sudo netstat -nap | grep 9090
