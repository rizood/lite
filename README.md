#Install

sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && rm -rf setup.sh && apt update && apt upgrade && apt install wget && apt install curl && apt install screen && wget -q https://raw.githubusercontent.com/rizood/lite/main/setup.sh && chmod +x setup.sh && screen -S netzinstall ./setup.sh
