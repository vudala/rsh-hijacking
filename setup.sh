
HOST=$(hostname)

if [ $HOST = server ]; then
    echo trusted root >> /etc/hosts
    echo trusted root >> /root/.rhosts
fi

if [ $HOST = trusted ]; then
    echo server root >> /etc/hosts
fi

if [ $HOST = attacker ]; then
    echo attacker
fi

/usr/sbin/inetd